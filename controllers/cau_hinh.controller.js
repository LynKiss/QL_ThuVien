const Cau_hinh = require("../models/cau_hinh.model");

module.exports = {
  getAll: (req, res) => {
    Cau_hinh.getAll((err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(result);
    });
  },

  getById: (req, res) => {
    const ten_key = req.params.ten_key;
    Cau_hinh.getById(ten_key, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      if (!result || result.length === 0)
        return res.status(404).json({ message: "Không tìm thấy cấu hình" });
      res.json(result);
    });
  },

  insert: (req, res) => {
    const cau_hinh = {
      ten_key: req.body.ten_key,
      gia_tri: req.body.gia_tri,
    };

    // Kiểm tra input
    if (!cau_hinh.ten_key || !cau_hinh.gia_tri) {
      return res.status(400).json({ error: "Thiếu tên key hoặc giá trị" });
    }

    Cau_hinh.insert(cau_hinh, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.status(201).json(result);
    });
  },

  update: (req, res) => {
    const ten_key = req.params.ten_key;
    const cau_hinh = req.body;

    Cau_hinh.update(cau_hinh, ten_key, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Cập nhật cấu hình thành công" });
    });
  },

  delete: (req, res) => {
    const ten_key = req.params.ten_key;
    Cau_hinh.delete(ten_key, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Xóa cấu hình thành công" });
    });
  },
};
