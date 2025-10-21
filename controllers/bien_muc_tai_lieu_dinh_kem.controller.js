const Bien_muc_tai_lieu_dinh_kem = require("../models/bien_muc_tai_lieu_dinh_kem.model");

module.exports = {
  getAll: (req, res) => {
    Bien_muc_tai_lieu_dinh_kem.getAll((err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    Bien_muc_tai_lieu_dinh_kem.getById(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      if (!result || result.length === 0)
        return res
          .status(404)
          .json({ message: "Không tìm thấy biên mục tài liệu đính kèm" });
      res.json(result);
    });
  },

  insert: (req, res) => {
    const bien_muc_tai_lieu_dinh_kem = {
      ma_bien_muc: req.body.ma_bien_muc,
      ten_file: req.body.ten_file,
      duong_dan: req.body.duong_dan,
      loai_file: req.body.loai_file,
      ngay_tao: req.body.ngay_tao,
    };

    // Kiểm tra input
    if (
      !bien_muc_tai_lieu_dinh_kem.ma_bien_muc ||
      !bien_muc_tai_lieu_dinh_kem.ten_file
    ) {
      return res.status(400).json({ error: "Thiếu mã biên mục hoặc tên file" });
    }

    Bien_muc_tai_lieu_dinh_kem.insert(
      bien_muc_tai_lieu_dinh_kem,
      (err, result) => {
        if (err) return res.status(500).json({ error: err.message });
        res.status(201).json(result);
      }
    );
  },

  update: (req, res) => {
    const id = req.params.id;
    const bien_muc_tai_lieu_dinh_kem = req.body;

    Bien_muc_tai_lieu_dinh_kem.update(
      bien_muc_tai_lieu_dinh_kem,
      id,
      (err, result) => {
        if (err) return res.status(500).json({ error: err.message });
        res.json({ message: "Cập nhật biên mục tài liệu đính kèm thành công" });
      }
    );
  },

  delete: (req, res) => {
    const id = req.params.id;
    Bien_muc_tai_lieu_dinh_kem.delete(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Xóa biên mục tài liệu đính kèm thành công" });
    });
  },
};
