const Phieu_muon = require("../models/phieu_muon.model");

module.exports = {
  getAll: (req, res) => {
    Phieu_muon.getAll((result) => {
      res.send(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    Phieu_muon.getById(id, (result) => {
      res.send(result);
    });
  },

  insert: (req, res) => {
    const phieu_muon = req.body;
    Phieu_muon.insert(phieu_muon, (result) => {
      res.send(result);
    });
  },

  update: (req, res) => {
    const phieu_muon = req.body;
    const id = req.params.id;
    Phieu_muon.update(phieu_muon, id, (result) => {
      res.send(result);
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    Phieu_muon.delete(id, (result) => {
      res.send(result);
    });
  },

  // 📌 Lịch sử mượn của user đang login
  getHistory: (req, res) => {
    const userId = req.user.id; // lấy từ middleware authenticate
    Phieu_muon.getHistoryByUser(userId, (err, data) => {
      if (err) {
        console.error("❌ Lỗi getHistory:", err);
        return res.status(500).json({ error: "Lỗi khi lấy lịch sử mượn" });
      }
      res.json(data);
    });
  },

  // 📌 Chi tiết phiếu mượn (kèm phạt nếu có)
  getDetail: (req, res) => {
    const userId = req.user.id; // lấy từ token
    const maPhieu = req.params.maPhieu;
    Phieu_muon.getDetailByPhieu(userId, maPhieu, (err, data) => {
      if (err) {
        console.error("❌ Lỗi getDetail:", err);
        return res
          .status(500)
          .json({ error: "Lỗi khi lấy chi tiết phiếu mượn" });
      }
      res.json(data);
    });
  },
};
