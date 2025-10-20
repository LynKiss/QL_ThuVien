// controllers/payment.controller.js
const crypto = require("crypto");
const axios = require("axios");
const db = require("../common/db"); // mysql2/promise pool

// safe logger
const safeLog = (...args) => {
  try {
    console.log(...args);
  } catch (e) {}
};

/**
 * Payment controller - full file
 *
 * Behavior:
 * - createMoMoPayment: insert payment record, call MoMo create API (if configured),
 *   BUT regardless of MoMo result we will mark payment as 'thanh_cong' and call
 *   stored-proc UpdateFineAfterPayment(ma_payment) so fines are allocated immediately.
 *   We still return payUrl to FE if available so FE can open payment screen.
 *
 * - handleMoMoIPN: retained for compatibility, will update payment if MoMo calls back.
 */

// -------------------------
// GET ALL PAYMENTS (admin)
// -------------------------
exports.getAllPayments = async (req, res) => {
  try {
    const [rows] = await db.query(
      `SELECT p.*, n.ho_ten
       FROM payment p
       LEFT JOIN nguoi_dung n ON p.ma_nguoi_dung = n.ma_nguoi_dung
       ORDER BY p.ngay_thanh_toan DESC`
    );
    return res.json(rows);
  } catch (err) {
    console.error("❌ Lỗi getAllPayments:", err);
    return res.status(500).json({ error: "Lỗi lấy danh sách payment" });
  }
};

// -------------------------
// GET PAYMENTS BY USER
// -------------------------
exports.getPaymentsByUser = async (req, res) => {
  try {
    const userId = req.params.id;
    const [rows] = await db.query(
      `SELECT ma_payment, ma_nguoi_dung, so_tien, phuong_thuc, hinh_thuc, trang_thai, ma_giao_dich, ngay_thanh_toan
       FROM payment
       WHERE ma_nguoi_dung = ?
       ORDER BY ngay_thanh_toan DESC`,
      [userId]
    );
    return res.json(rows);
  } catch (err) {
    console.error("❌ Lỗi getPaymentsByUser:", err);
    return res.status(500).json({ error: "Lỗi lấy payment theo người dùng" });
  }
};

// -------------------------
// GET PAYMENT BY ID
// -------------------------
exports.getPaymentById = async (req, res) => {
  try {
    const { id } = req.params;
    const [rows] = await db.query(
      `SELECT ma_payment, ma_nguoi_dung, so_tien, phuong_thuc, hinh_thuc, trang_thai, ma_giao_dich, ngay_thanh_toan
       FROM payment
       WHERE ma_payment = ? LIMIT 1`,
      [id]
    );
    if (!rows || rows.length === 0)
      return res.status(404).json({ error: "Không tìm thấy payment" });
    return res.json(rows[0]);
  } catch (err) {
    console.error("❌ Lỗi getPaymentById:", err);
    return res.status(500).json({ error: "Lỗi truy vấn payment" });
  }
};

// -------------------------
// CREATE PAYMENT (manual)
// -------------------------
exports.createPayment = async (req, res) => {
  try {
    const { ma_nguoi_dung, so_tien, phuong_thuc, hinh_thuc, ma_giao_dich } =
      req.body;
    if (!ma_nguoi_dung || so_tien == null || !phuong_thuc) {
      return res.status(400).json({
        error: "Thiếu thông tin: ma_nguoi_dung, so_tien, phuong_thuc",
      });
    }

    const amountDb = Number(so_tien).toFixed(2);

    const [result] = await db.query(
      `INSERT INTO payment (ma_nguoi_dung, so_tien, phuong_thuc, hinh_thuc, trang_thai, ma_giao_dich)
       VALUES (?, ?, ?, ?, 'cho_xu_ly', ?)`,
      [
        ma_nguoi_dung,
        amountDb,
        phuong_thuc,
        hinh_thuc || phuong_thuc,
        ma_giao_dich || null,
      ]
    );

    return res.status(201).json({
      message: "Tạo payment thành công",
      ma_payment: result.insertId,
    });
  } catch (err) {
    console.error("❌ Lỗi createPayment:", err);
    return res.status(500).json({ error: "Lỗi tạo payment" });
  }
};

// -------------------------
// CREATE MoMo PAYMENT (v2) — show pay screen but treat as success immediately
// Flow:
// 1) insert payment (cho_xu_ly)
// 2) call MoMo create (if endpoint/config ok) to get payUrl (optional)
// 3) update payment => 'thanh_cong', ngay_thanh_toan = NOW(), so_tien set
// 4) call CALL UpdateFineAfterPayment(ma_payment) to allocate fines immediately
// 5) return payUrl (if any) + ma_payment + ma_giao_dich to FE
// -------------------------
exports.createMoMoPayment = async (req, res) => {
  try {
    const { ma_nguoi_dung, so_tien } = req.body;
    if (!ma_nguoi_dung || so_tien == null) {
      return res.status(400).json({ error: "Thiếu thông tin thanh toán" });
    }

    // MoMo config (env override)
    const partnerCode = process.env.MOMO_PARTNER_CODE || "MOMO";
    const accessKey = process.env.MOMO_ACCESS_KEY || "F8BBA842ECF85";
    const secretKey =
      process.env.MOMO_SECRET_KEY || "K951B6PE1waDMi640xX08PD3vg6EkVlz";
    const endpoint =
      process.env.MOMO_ENDPOINT ||
      "https://test-payment.momo.vn/v2/gateway/api/create";

    const ipnUrl =
      process.env.MOMO_IPN_URL ||
      `${req.protocol}://${req.get("host")}/api/payment/momo/ipn`;
    const returnUrl =
      process.env.MOMO_RETURN_URL ||
      `${req.protocol}://${req.get("host")}/payment-success`;

    // order id
    const orderId = `${partnerCode}${Date.now()}`;
    const requestId = orderId;
    const orderInfo = `Thanh toán phạt thư viện #${ma_nguoi_dung}`;

    // amounts
    const amountForMoMo = Math.round(Number(so_tien)).toString(); // no decimals
    const amountForDb = Number(so_tien).toFixed(2);

    // extraData
    const extraData = Buffer.from(JSON.stringify({ ma_nguoi_dung })).toString(
      "base64"
    );
    const requestType = "captureWallet";

    // raw signature for MoMo v2
    const rawSignature = `accessKey=${accessKey}&amount=${amountForMoMo}&extraData=${extraData}&ipnUrl=${ipnUrl}&orderId=${orderId}&orderInfo=${orderInfo}&partnerCode=${partnerCode}&redirectUrl=${returnUrl}&requestId=${requestId}&requestType=${requestType}`;
    const signature = crypto
      .createHmac("sha256", secretKey)
      .update(rawSignature)
      .digest("hex");

    const payload = {
      partnerCode,
      accessKey,
      requestId,
      amount: amountForMoMo,
      orderId,
      orderInfo,
      redirectUrl: returnUrl,
      ipnUrl,
      requestType,
      extraData,
      signature,
      lang: "vi",
    };

    safeLog("📤 Gửi MoMo payload (tóm tắt):", {
      endpoint,
      orderId,
      ma_nguoi_dung,
      amountForMoMo,
    });

    // 0) Insert payment record (cho_xu_ly) so we have ma_payment for later
    const [insertRes] = await db.query(
      `INSERT INTO payment (ma_nguoi_dung, so_tien, phuong_thuc, hinh_thuc, trang_thai, ma_giao_dich)
       VALUES (?, ?, 'momo', 'momo', 'cho_xu_ly', ?)`,
      [ma_nguoi_dung, amountForDb, orderId]
    );
    const ma_payment = insertRes.insertId;

    // 1) Try calling MoMo to get payUrl (best-effort). If fails, we continue.
    let momoRes = null;
    try {
      const response = await axios.post(endpoint, payload, {
        headers: { "Content-Type": "application/json" },
        timeout: 15000,
      });
      momoRes = response.data;
      safeLog("📥 Phản hồi MoMo (tóm tắt):", {
        resultCode: momoRes.resultCode,
        payUrl: !!momoRes.payUrl,
      });
    } catch (err) {
      safeLog(
        "⚠️ Lỗi gọi MoMo (không dừng flow, sẽ coi thành công):",
        err && err.response ? err.response.data : err.message || err
      );
      // don't throw — we will still mark payment success and allocate fines
    }

    // 2) Mark payment as thanh_cong immediately (treat as success regardless)
    let newConn;
    try {
      // 2a. Mở kết nối riêng để tránh commit conflict
      const mysql = require("mysql2/promise");
      newConn = await mysql.createConnection({
        host: process.env.DB_HOST || "localhost",
        user: process.env.DB_USER || "root",
        password: process.env.DB_PASS || "250904",
        database: process.env.DB_NAME || "quan_ly_thu_vien_merged",
      });

      await newConn.query(
        `UPDATE payment
         SET trang_thai = 'thanh_cong', ngay_thanh_toan = NOW(), so_tien = ?
         WHERE ma_payment = ?`,
        [amountForDb, ma_payment]
      );

      // 3) Gọi stored procedure trong cùng kết nối này
      await newConn.query("CALL UpdateFineAfterPayment(?)", [ma_payment]);
      safeLog(
        "✅ UpdateFineAfterPayment gọi thành công cho ma_payment=",
        ma_payment
      );
    } catch (uerr) {
      console.error("❌ Lỗi cập nhật hoặc gọi UpdateFineAfterPayment:", uerr);
    } finally {
      if (newConn) await newConn.end();
    }

    // 4) Return to frontend:
    //    - payUrl if MoMo returned one (so FE can still open payment UI)
    //    - ma_payment / ma_giao_dich for tracking
    return res.json({
      message:
        "Thanh toán đã được xử lý trên server (đã đánh dấu thành công và phân bổ phạt).",
      ma_payment,
      ma_giao_dich: orderId,
      payUrl: momoRes && momoRes.payUrl ? momoRes.payUrl : null,
      deeplink: momoRes && momoRes.deeplink ? momoRes.deeplink : null,
      qrCodeUrl: momoRes && momoRes.qrCodeUrl ? momoRes.qrCodeUrl : null,
      rawMoMo: momoRes || null,
    });
  } catch (err) {
    console.error("❌ Lỗi createMoMoPayment:", err);
    return res
      .status(500)
      .json({ error: "Lỗi tạo yêu cầu thanh toán MoMo", detail: err.message });
  }
};

// -------------------------
// HANDLE MoMo IPN (public endpoint) - still kept for compatibility
// -------------------------
exports.handleMoMoIPN = async (req, res) => {
  try {
    const body = req.body || {};
    const orderId =
      body.orderId || body.requestId || body.orderID || body.order_id;
    const resultCodeRaw =
      body.resultCode != null ? body.resultCode : body.errorCode;
    const resultCode = resultCodeRaw != null ? Number(resultCodeRaw) : null;
    const amount =
      body.amount != null
        ? Number(body.amount)
        : body.totalAmount != null
        ? Number(body.totalAmount)
        : 0;

    safeLog("📥 IPN MoMo payload:", { orderId, resultCode, amount });

    if (!orderId) {
      safeLog("⚠️ IPN thiếu orderId:", body);
      return res.json({ resultCode: 0, message: "ok - missing orderId" });
    }

    // Find payment
    const [rows] = await db.query(
      `SELECT ma_payment FROM payment WHERE ma_giao_dich = ? LIMIT 1`,
      [orderId]
    );

    if (!rows || rows.length === 0) {
      safeLog("⚠️ IPN không tìm thấy payment cho orderId:", orderId);
      return res.json({ resultCode: 0, message: "ok - no matching payment" });
    }

    const ma_payment = rows[0].ma_payment;
    const status = resultCode === 0 ? "thanh_cong" : "that_bai";

    // Update payment according to IPN (still useful if you want to keep consistency)
    try {
      await db.query(
        `UPDATE payment SET trang_thai = ?, ngay_thanh_toan = NOW(), so_tien = ? WHERE ma_payment = ?`,
        [status, amount || 0, ma_payment]
      );
    } catch (uerr) {
      console.error("❌ Lỗi cập nhật payment từ IPN:", uerr);
    }

    // If MoMo says success, call stored proc (safe; UpdateFineAfterPayment can detect)
    if (status === "thanh_cong") {
      try {
        await db.query("CALL UpdateFineAfterPayment(?)", [ma_payment]);
        safeLog("✅ (IPN) UpdateFineAfterPayment ok for", ma_payment);
      } catch (spErr) {
        console.error("❌ (IPN) Lỗi gọi UpdateFineAfterPayment:", spErr);
      }
    }

    return res.json({ resultCode: 0, message: "IPN processed" });
  } catch (err) {
    console.error("❌ Lỗi handleMoMoIPN:", err);
    // In production you may want to return 200 to avoid retries; here 500 to reveal errors while developing
    return res.status(500).json({ error: "Lỗi xử lý IPN MoMo" });
  }
};

// -------------------------
// MANUAL: call stored-proc to allocate payment to fines
// -------------------------
exports.updateFineAfterPayment = async (req, res) => {
  try {
    const { ma_payment } = req.body;
    if (!ma_payment) return res.status(400).json({ error: "Thiếu mã payment" });

    await db.query("CALL UpdateFineAfterPayment(?)", [ma_payment]);

    return res.json({ message: "✅ Cập nhật phạt thành công" });
  } catch (err) {
    console.error("❌ Lỗi UpdateFineAfterPayment:", err);
    return res
      .status(500)
      .json({ error: err.sqlMessage || "Lỗi xử lý UpdateFineAfterPayment" });
  }
};

// -------------------------
// UPDATE PAYMENT (admin only - update status)
// -------------------------
exports.updatePayment = async (req, res) => {
  try {
    const { id } = req.params;
    const { trang_thai } = req.body;
    if (!trang_thai)
      return res.status(400).json({ error: "Thiếu trường trang_thai" });

    const [result] = await db.query(
      "UPDATE payment SET trang_thai = ? WHERE ma_payment = ?",
      [trang_thai, id]
    );
    if (!result || result.affectedRows === 0)
      return res.status(404).json({ error: "Không tìm thấy payment" });
    return res.json({ message: "Cập nhật thành công" });
  } catch (err) {
    console.error("❌ Lỗi updatePayment:", err);
    return res.status(500).json({ error: "Lỗi cập nhật payment" });
  }
};

// -------------------------
// DELETE PAYMENT (admin)
// -------------------------
exports.deletePayment = async (req, res) => {
  try {
    const { id } = req.params;
    const [result] = await db.query(
      "DELETE FROM payment WHERE ma_payment = ?",
      [id]
    );
    if (!result || result.affectedRows === 0)
      return res.status(404).json({ error: "Không tìm thấy payment" });
    return res.json({ message: "Xóa payment thành công" });
  } catch (err) {
    console.error("❌ Lỗi deletePayment:", err);
    return res.status(500).json({ error: "Lỗi xóa payment" });
  }
};
