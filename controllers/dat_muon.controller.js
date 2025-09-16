const Dat_muon = require("../models/dat_muon.model");

module.exports = {
  getAll: (req, res) => {
    Dat_muon.getAll((err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    Dat_muon.getById(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      if (!result || result.length === 0)
        return res.status(404).json({ message: "Không tìm thấy đơn đặt mượn" });
      res.json(result[0]);
    });
  },

  insert: (req, res) => {
    // Lấy user từ JWT
    const maNguoiDung = req.user?.ma_nguoi_dung;
    if (!maNguoiDung) {
      return res.status(401).json({ error: "Chưa đăng nhập" });
    }

    // Chuẩn bị dữ liệu gửi vào procedure
    const dat_muon = {
      ma_doc_gia: maNguoiDung,
      ngay_dat: new Date(),
      ngay_du_kien_muon: req.body.ngay_du_kien_muon,
      trang_thai: "Chờ duyệt",
      ghi_chu: req.body.ghi_chu || null,
      ma_nhan_vien: null, // thủ thư sẽ duyệt sau
    };

    Dat_muon.insert(dat_muon, (err, result) => {
      if (err) {
        // Nếu stored procedure bắn SIGNAL → MySQL sẽ trả lỗi
        return res.status(400).json({ error: err.sqlMessage || err.message });
      }
      res.status(201).json(result);
    });
  },

  update: (req, res) => {
    const id = req.params.id;
    const dat_muon = req.body;

    Dat_muon.update(dat_muon, id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Cập nhật đơn đặt mượn thành công" });
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    Dat_muon.delete(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Xóa đơn đặt mượn thành công" });
    });
  },
};
