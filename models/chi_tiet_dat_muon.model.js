const Chi_tiet_dat_muon = require("../models/chi_tiet_dat_muon.model");

module.exports = {
  getAll: (req, res) => {
    Chi_tiet_dat_muon.getAll((err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    Chi_tiet_dat_muon.getById(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      if (!result || result.length === 0)
        return res
          .status(404)
          .json({ message: "Không tìm thấy chi tiết đặt mượn" });
      res.json(result);
    });
  },

  insert: (req, res) => {
    const chi_tiet_dat_muon = {
      ma_dat_muon: req.body.ma_dat_muon,
      ma_sach: req.body.ma_sach,
      so_luong: req.body.so_luong,
    };

    // Kiểm tra input
    if (!chi_tiet_dat_muon.ma_dat_muon || !chi_tiet_dat_muon.ma_sach) {
      return res.status(400).json({ error: "Thiếu mã đặt mượn hoặc mã sách" });
    }
    if (chi_tiet_dat_muon.so_luong <= 0) {
      return res.status(400).json({ error: "Số lượng phải lớn hơn 0" });
    }

    Chi_tiet_dat_muon.insert(chi_tiet_dat_muon, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.status(201).json(result);
    });
  },

  update: (req, res) => {
    const id = req.params.id;
    const chi_tiet_dat_muon = req.body;

    Chi_tiet_dat_muon.update(chi_tiet_dat_muon, id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Cập nhật chi tiết đặt mượn thành công" });
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    Chi_tiet_dat_muon.delete(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Xóa chi tiết đặt mượn thành công" });
    });
  },
};
