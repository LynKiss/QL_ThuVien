const crypto = require("crypto");
const axios = require("axios");
const db = require("../common/db");

exports.getAllPayments = async (req, res) => {
  try {
    const [rows] = await db.query(
      `SELECT p.ma_payment, p.ma_nguoi_dung, n.ho_ten, p.so_tien, p.hinh_thuc, p.trang_thai, p.ngay_thanh_toan, p.ma_giao_dich
       FROM payment p
       LEFT JOIN nguoi_dung n ON p.ma_nguoi_dung = n.ma_nguoi_dung
       ORDER BY p.ngay_thanh_toan DESC`
    );

    res.json(rows);
  } catch (err) {
    console.error("❌ Lỗi lấy tất cả payment:", err);
    res.status(500).json({ error: "Lỗi truy vấn tất cả payment" });
  }
};

exports.getPaymentsByUser = async (req, res) => {
  try {
    const userId = req.params.id;
    const [rows] = await db.query(
      `SELECT ma_payment, so_tien, hinh_thuc, trang_thai, ngay_thanh_toan, ma_giao_dich
       FROM payment
       WHERE ma_nguoi_dung = ?
       ORDER BY ngay_thanh_toan DESC`,
      [userId]
    );

    res.json(rows);
  } catch (err) {
    console.error("❌ Lỗi lấy payment theo user:", err);
    res.status(500).json({ error: "Lỗi truy vấn payment" });
  }
};

exports.getPaymentById = async (req, res) => {
  try {
    const { id } = req.params;
    const [rows] = await db.query(
      `SELECT ma_payment, ma_nguoi_dung, so_tien, hinh_thuc, trang_thai, ngay_thanh_toan, ma_giao_dich
       FROM payment
       WHERE ma_payment = ?`,
      [id]
    );

    if (rows.length === 0) {
      return res.status(404).json({ error: "Không tìm thấy payment" });
    }

    res.json(rows[0]);
  } catch (err) {
    console.error("❌ Lỗi lấy payment theo ID:", err);
    res.status(500).json({ error: "Lỗi truy vấn payment" });
  }
};

exports.createPayment = async (req, res) => {
  try {
    const { ma_nguoi_dung, so_tien, hinh_thuc, ma_giao_dich } = req.body;

    if (!ma_nguoi_dung || !so_tien || !hinh_thuc) {
      return res.status(400).json({
        error: "Thiếu thông tin bắt buộc: ma_nguoi_dung, so_tien, hinh_thuc",
      });
    }

    const [result] = await db.query(
      `INSERT INTO payment (ma_nguoi_dung, so_tien, hinh_thuc, trang_thai, ma_giao_dich, ngay_tao)
       VALUES (?, ?, ?, 'cho_xu_ly', ?, NOW())`,
      [ma_nguoi_dung, so_tien, hinh_thuc, ma_giao_dich || null]
    );

    res
      .status(201)
      .json({ message: "Tạo payment thành công", ma_payment: result.insertId });
  } catch (err) {
    console.error("❌ Lỗi tạo payment:", err);
    res.status(500).json({ error: "Lỗi tạo payment" });
  }
};

exports.updatePayment = async (req, res) => {
  try {
    const { id } = req.params;
    const { trang_thai, ma_giao_dich } = req.body;

    const updates = [];
    const params = [];

    if (trang_thai !== undefined) {
      updates.push("trang_thai = ?");
      params.push(trang_thai);
    }
    if (ma_giao_dich !== undefined) {
      updates.push("ma_giao_dich = ?");
      params.push(ma_giao_dich);
    }

    if (updates.length === 0) {
      return res.status(400).json({ error: "Không có trường nào để cập nhật" });
    }

    params.push(id);

    const [result] = await db.query(
      `UPDATE payment SET ${updates.join(", ")} WHERE ma_payment = ?`,
      params
    );

    if (result.affectedRows === 0) {
      return res
        .status(404)
        .json({ error: "Không tìm thấy payment để cập nhật" });
    }

    res.json({ message: "Cập nhật payment thành công" });
  } catch (err) {
    console.error("❌ Lỗi cập nhật payment:", err);
    res.status(500).json({ error: "Lỗi cập nhật payment" });
  }
};

exports.deletePayment = async (req, res) => {
  try {
    const { id } = req.params;

    const [result] = await db.query(
      "DELETE FROM payment WHERE ma_payment = ?",
      [id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: "Không tìm thấy payment để xóa" });
    }

    res.json({ message: "Xóa payment thành công" });
  } catch (err) {
    console.error("❌ Lỗi xóa payment:", err);
    res.status(500).json({ error: "Lỗi xóa payment" });
  }
};

// 🔹 Xử lý IPN (callback từ MoMo)
exports.handleMoMoIPN = async (req, res) => {
  try {
    const { orderId, resultCode, message, amount, extraData } = req.body;

    const decoded = JSON.parse(Buffer.from(extraData, "base64").toString());
    const ma_nguoi_dung = decoded.ma_nguoi_dung;

    console.log("📥 IPN MoMo:", req.body);

    // Xác định trạng thái
    let trang_thai = "that_bai";
    if (resultCode === 0) {
      trang_thai = "thanh_cong";
    } else if (resultCode === 1006) {
      trang_thai = "huy";
    }

    // Cập nhật payment
    const [update] = await db.query(
      `UPDATE payment
       SET trang_thai = ?, so_tien = ?, ngay_thanh_toan = NOW()
       WHERE ma_giao_dich = ?`,
      [trang_thai, amount, orderId]
    );

    // Nếu thanh toán thành công → cập nhật phạt
    if (resultCode === 0) {
      const [row] = await db.query(
        `SELECT ma_payment FROM payment WHERE ma_giao_dich = ? LIMIT 1`,
        [orderId]
      );
      if (row.length > 0) {
        const ma_payment = row[0].ma_payment;
        await db.query("CALL UpdateFineAfterPayment(?)", [ma_payment]);
      }
    }

    res.json({ resultCode: 0, message: "IPN received successfully" });
  } catch (err) {
    console.error("❌ Lỗi IPN MoMo:", err);
    res.status(500).json({ error: "Lỗi xử lý IPN MoMo" });
  }
};

// 🔹 Tạo yêu cầu thanh toán MoMo Sandbox UAT
exports.createMoMoPayment = async (req, res) => {
  try {
    const { ma_nguoi_dung, so_tien } = req.body;

    if (!ma_nguoi_dung || !so_tien) {
      return res.status(400).json({ error: "Thiếu thông tin thanh toán" });
    }

    const partnerCode = process.env.MOMO_PARTNER_CODE;
    const accessKey = "F8BBA842ECF85";
    const secretKey = "K951B6PE1waDMi640xX08PD3vg6EkVlz";
    const endpoint =
      "https://test-payment.momo.vn/gw_payment/transactionProcessor";
    const ipnUrl =
      process.env.MOMO_IPN_URL ||
      `${req.protocol}://${req.get("host")}/api/payment/momo/ipn`;
    const returnUrl =
      process.env.MOMO_RETURN_URL ||
      `${req.protocol}://${req.get("host")}/payment-success`;

    const orderId = `${partnerCode}${Date.now()}`;
    const requestId = orderId;
    const orderInfo = `Thanh toán phạt thư viện #${ma_nguoi_dung}`;
    const redirectUrl = returnUrl;
    const amount = so_tien.toString();
    const extraData = Buffer.from(JSON.stringify({ ma_nguoi_dung })).toString(
      "base64"
    );

    const rawSignature = `accessKey=${accessKey}&amount=${amount}&extraData=${extraData}&ipnUrl=${ipnUrl}&orderId=${orderId}&orderInfo=${orderInfo}&partnerCode=${partnerCode}&redirectUrl=${redirectUrl}&requestId=${requestId}&requestType=captureWallet`;

    const signature = crypto
      .createHmac("sha256", secretKey)
      .update(rawSignature)
      .digest("hex");

    // Gọi API MoMo Sandbox
    const payload = {
      partnerCode,
      accessKey,
      requestId,
      amount,
      orderId,
      orderInfo,
      redirectUrl,
      ipnUrl,
      requestType: "captureWallet",
      extraData,
      signature,
      lang: "vi",
    };

    const { data } = await axios.post(endpoint, payload, {
      headers: { "Content-Type": "application/json" },
    });

    // Lưu payment
    const [result] = await db.query(
      `INSERT INTO payment (ma_nguoi_dung, so_tien, hinh_thuc, trang_thai, ma_giao_dich, ngay_thanh_toan)
       VALUES (?, ?, 'momo', 'cho_xu_ly', ?, NOW())`,
      [ma_nguoi_dung, so_tien, orderId]
    );

    res.json({
      payUrl: data.payUrl,
      ma_payment: result.insertId,
      orderId,
    });
  } catch (err) {
    console.error("❌ Lỗi tạo yêu cầu MoMo:", err);
    res.status(500).json({ error: "Lỗi tạo yêu cầu thanh toán MoMo" });
  }
};

exports.updateFineAfterPayment = async (req, res) => {
  try {
    const { ma_payment } = req.body;
    if (!ma_payment) {
      return res.status(400).json({ error: "Thiếu mã payment" });
    }

    await db.query("CALL UpdateFineAfterPayment(?)", [ma_payment]);

    res.json({
      message: "✅ Cập nhật trạng thái phạt sau thanh toán thành công.",
    });
  } catch (err) {
    console.error("❌ Lỗi UpdateFineAfterPayment:", err);
    res
      .status(500)
      .json({ error: err.sqlMessage || "Lỗi xử lý UpdateFineAfterPayment" });
  }
};
