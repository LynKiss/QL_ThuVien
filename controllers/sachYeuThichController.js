const SachYeuThich = require("../models/SachYeuThich.model");

// Lấy danh sách yêu thích của user hiện tại
exports.getByUser = (req, res) => {
  const userId = req.user.id; // từ JWT
  SachYeuThich.getByUser(userId, (err, data) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    if (!data || data.length === 0) {
      return res.json({ message: "Chưa có sách yêu thích nào", data: [] });
    }
    res.json(data);
  });
};

// Thêm sách vào danh sách yêu thích
exports.add = (req, res) => {
  const fav = {
    ma_nguoi_dung: req.user.id, // từ JWT
    ma_sach: req.body.ma_sach,
  };

  if (!fav.ma_sach) {
    return res.status(400).json({ message: "Thiếu mã sách" });
  }

  SachYeuThich.insert(fav, (err, data) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json({ message: "Đã thêm vào yêu thích", data });
  });
};

// Xóa sách khỏi danh sách yêu thích
exports.remove = (req, res) => {
  const ma_nguoi_dung = req.user.id; // từ JWT
  const ma_sach = req.params.ma_sach;

  if (!ma_sach) {
    return res.status(400).json({ message: "Thiếu mã sách cần xóa" });
  }

  SachYeuThich.delete(ma_nguoi_dung, ma_sach, (err, message) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json({ message: message || "Đã xóa khỏi yêu thích" });
  });
};
