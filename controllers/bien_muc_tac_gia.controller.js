const Bien_muc_tac_gia = require("../models/bien_muc_tac_gia.model");

module.exports = {
  getAll: (req, res) => {
    Bien_muc_tac_gia.getAll((err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    Bien_muc_tac_gia.getById(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      if (!result || result.length === 0)
        return res
          .status(404)
          .json({ message: "Không tìm thấy biên mục tác giả" });
      res.json(result);
    });
  },

  insert: (req, res) => {
    const bien_muc_tac_gia = {
      ma_bien_muc: req.body.ma_bien_muc,
      ten_tac_gia: req.body.ten_tac_gia,
    };

    // Kiểm tra input
    if (!bien_muc_tac_gia.ma_bien_muc || !bien_muc_tac_gia.ten_tac_gia) {
      return res
        .status(400)
        .json({ error: "Thiếu mã biên mục hoặc tên tác giả" });
    }

    Bien_muc_tac_gia.insert(bien_muc_tac_gia, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.status(201).json(result);
    });
  },

  update: (req, res) => {
    const id = req.params.id;
    const bien_muc_tac_gia = req.body;

    Bien_muc_tac_gia.update(bien_muc_tac_gia, id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Cập nhật biên mục tác giả thành công" });
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    Bien_muc_tac_gia.delete(id, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Xóa biên mục tác giả thành công" });
    });
  },
};
