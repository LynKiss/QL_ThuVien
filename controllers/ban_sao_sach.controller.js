const Ban_sao_sach = require("../models/ban_sao_sach.model");

module.exports = {
  getAll: (req, res) => {
    Ban_sao_sach.getAll((err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    Ban_sao_sach.getById(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      if (!result || result.length === 0)
        return res.status(404).json({ message: "Không tìm thấy bản sao sách" });
      res.json(result);
    });
  },

  insert: (req, res) => {
    const ban_sao_sach = {
      ma_sach: req.body.ma_sach,
      ma_vach: req.body.ma_vach,
      rfid: req.body.rfid,
      tinh_trang: req.body.tinh_trang,
      vi_tri: req.body.vi_tri,
      ngay_mua: req.body.ngay_mua,
      gia_mua: req.body.gia_mua,
    };

    // Kiểm tra input
    if (!ban_sao_sach.ma_sach) {
      return res.status(400).json({ error: "Thiếu mã sách" });
    }

    Ban_sao_sach.insert(ban_sao_sach, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.status(201).json(result);
    });
  },

  update: (req, res) => {
    const id = req.params.id;
    const ban_sao_sach = req.body;

    Ban_sao_sach.update(ban_sao_sach, id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Cập nhật bản sao sách thành công" });
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    Ban_sao_sach.delete(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Xóa bản sao sách thành công" });
    });
  },
};
