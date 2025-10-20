const db = require("../common/db");

exports.getPhatByUser = async (req, res) => {
  try {
    const userId = req.params.id;
    const [rows] = await db.query(
      `SELECT ma_phat, so_tien, so_duoc_thanh_toan,
              (so_tien - so_duoc_thanh_toan) AS con_no,
              ly_do, ngay_phat, trang_thai
       FROM phat
       WHERE ma_nguoi_dung = ?
       ORDER BY ngay_phat DESC`,
      [userId]
    );

    res.json(rows);
  } catch (err) {
    console.error("❌ Lỗi lấy danh sách phạt:", err);
    res.status(500).json({ error: "Lỗi truy vấn phạt" });
  }
};

exports.getAllPhat = async (req, res) => {
  try {
    const [rows] = await db.query(
      `SELECT p.ma_phat, p.ma_nguoi_dung, n.ho_ten, p.ma_phieu_muon, p.so_tien, p.so_duoc_thanh_toan,
              (p.so_tien - p.so_duoc_thanh_toan) AS con_no,
              p.ly_do, p.ngay_phat, p.trang_thai
       FROM phat p
       LEFT JOIN nguoi_dung n ON p.ma_nguoi_dung = n.ma_nguoi_dung
       ORDER BY p.ngay_phat DESC`
    );

    res.json(rows);
  } catch (err) {
    console.error("❌ Lỗi lấy tất cả phạt:", err);
    res.status(500).json({ error: "Lỗi truy vấn tất cả phạt" });
  }
};

exports.getPhatById = async (req, res) => {
  try {
    const { id } = req.params;
    const [rows] = await db.query(
      `SELECT ma_phat, ma_nguoi_dung, ma_phieu_muon, so_tien, so_duoc_thanh_toan,
              (so_tien - so_duoc_thanh_toan) AS con_no,
              ly_do, ngay_phat, trang_thai
       FROM phat
       WHERE ma_phat = ?`,
      [id]
    );

    if (rows.length === 0) {
      return res.status(404).json({ error: "Không tìm thấy phạt" });
    }

    res.json(rows[0]);
  } catch (err) {
    console.error("❌ Lỗi lấy phạt theo ID:", err);
    res.status(500).json({ error: "Lỗi truy vấn phạt" });
  }
};

exports.createPhat = async (req, res) => {
  try {
    const {
      ma_nguoi_dung,
      ma_phieu_muon,
      so_tien,
      ly_do,
      ngay_phat,
      trang_thai,
    } = req.body;

    if (!ma_nguoi_dung || !so_tien || !ly_do) {
      return res.status(400).json({
        error: "Thiếu thông tin bắt buộc: ma_nguoi_dung, so_tien, ly_do",
      });
    }

    const [result] = await db.query(
      `INSERT INTO phat (ma_nguoi_dung, ma_phieu_muon, so_tien, ly_do, ngay_phat, trang_thai, so_duoc_thanh_toan)
       VALUES (?, ?, ?, ?, ?, ?, 0)`,
      [
        ma_nguoi_dung,
        ma_phieu_muon || null,
        so_tien,
        ly_do,
        ngay_phat || new Date(),
        trang_thai || "Chưa thanh toán",
      ]
    );

    res
      .status(201)
      .json({ message: "Tạo phạt thành công", ma_phat: result.insertId });
  } catch (err) {
    console.error("❌ Lỗi tạo phạt:", err);
    res.status(500).json({ error: "Lỗi tạo phạt" });
  }
};

exports.updatePhat = async (req, res) => {
  try {
    const { id } = req.params;
    const { so_duoc_thanh_toan, trang_thai, ly_do } = req.body;

    const updates = [];
    const params = [];

    if (so_duoc_thanh_toan !== undefined) {
      updates.push("so_duoc_thanh_toan = ?");
      params.push(so_duoc_thanh_toan);
    }
    if (trang_thai !== undefined) {
      updates.push("trang_thai = ?");
      params.push(trang_thai);
    }
    if (ly_do !== undefined) {
      updates.push("ly_do = ?");
      params.push(ly_do);
    }

    if (updates.length === 0) {
      return res.status(400).json({ error: "Không có trường nào để cập nhật" });
    }

    params.push(id);

    const [result] = await db.query(
      `UPDATE phat SET ${updates.join(", ")} WHERE ma_phat = ?`,
      params
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: "Không tìm thấy phạt để cập nhật" });
    }

    res.json({ message: "Cập nhật phạt thành công" });
  } catch (err) {
    console.error("❌ Lỗi cập nhật phạt:", err);
    res.status(500).json({ error: "Lỗi cập nhật phạt" });
  }
};

exports.deletePhat = async (req, res) => {
  try {
    const { id } = req.params;

    const [result] = await db.query("DELETE FROM phat WHERE ma_phat = ?", [id]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: "Không tìm thấy phạt để xóa" });
    }

    res.json({ message: "Xóa phạt thành công" });
  } catch (err) {
    console.error("❌ Lỗi xóa phạt:", err);
    res.status(500).json({ error: "Lỗi xóa phạt" });
  }
};

exports.payPhat = async (req, res) => {
  try {
    const { ma_phat, so_tien_thanh_toan } = req.body;
    const userId = req.user.id; // Từ JWT middleware

    if (!ma_phat || !so_tien_thanh_toan) {
      return res.status(400).json({ error: "Thiếu thông tin thanh toán" });
    }

    // Kiểm tra phạt thuộc về user
    const [phatRows] = await db.query(
      "SELECT so_tien, so_duoc_thanh_toan, trang_thai FROM phat WHERE ma_phat = ? AND ma_nguoi_dung = ?",
      [ma_phat, userId]
    );

    if (phatRows.length === 0) {
      return res.status(404).json({ error: "Không tìm thấy khoản phạt" });
    }

    const phat = phatRows[0];
    const con_no = phat.so_tien - phat.so_duoc_thanh_toan;

    if (con_no <= 0) {
      return res
        .status(400)
        .json({ error: "Khoản phạt đã được thanh toán đầy đủ" });
    }

    if (so_tien_thanh_toan > con_no) {
      return res
        .status(400)
        .json({ error: "Số tiền thanh toán vượt quá số nợ" });
    }

    // Cập nhật so_duoc_thanh_toan
    const new_so_duoc_thanh_toan = phat.so_duoc_thanh_toan + so_tien_thanh_toan;
    const new_trang_thai =
      new_so_duoc_thanh_toan >= phat.so_tien
        ? "Đã thanh toán"
        : "Chưa thanh toán";

    await db.query(
      "UPDATE phat SET so_duoc_thanh_toan = ?, trang_thai = ? WHERE ma_phat = ?",
      [new_so_duoc_thanh_toan, new_trang_thai, ma_phat]
    );

    // Ghi log
    await db.query(
      "INSERT INTO nhat_ky_he_thong (ma_nguoi_dung, thao_tac, thoi_gian) VALUES (?, ?, NOW())",
      [userId, `Thanh toán phạt ${ma_phat}: ${so_tien_thanh_toan} VND`]
    );

    res.json({
      message: "Thanh toán thành công",
      so_tien_thanh_toan,
      con_no_con_lai: phat.so_tien - new_so_duoc_thanh_toan,
    });
  } catch (err) {
    console.error("❌ Lỗi thanh toán phạt:", err);
    res.status(500).json({ error: "Lỗi xử lý thanh toán" });
  }
};
