// controllers/notification.controller.js
const Notification = require("../models/notification.model");

module.exports = {
  getNotifications: (req, res) => {
    const ma_nguoi_dung = req.query.ma_nguoi_dung;
    if (!ma_nguoi_dung) {
      return res.status(400).json({ message: "Thiếu tham số ma_nguoi_dung" });
    }

    Notification.getByUser(ma_nguoi_dung, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: err.message });
      }
      res.json(result);
    });
  },

  markAsRead: (req, res) => {
    const ma_tb = req.params.ma_tb;
    if (!ma_tb) {
      return res.status(400).json({ message: "Thiếu tham số ma_tb" });
    }

    Notification.markAsRead(ma_tb, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: err.message });
      }
      if (result.affectedRows === 0) {
        return res.status(404).json({ message: "Không tìm thấy thông báo" });
      }
      res.json({ message: "Đã đánh dấu đã đọc" });
    });
  },

  getUnreadCount: (req, res) => {
    const ma_nguoi_dung = req.query.ma_nguoi_dung;
    if (!ma_nguoi_dung) {
      return res.status(400).json({ message: "Thiếu tham số ma_nguoi_dung" });
    }

    Notification.getUnreadCount(ma_nguoi_dung, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: err.message });
      }
      res.json(result);
    });
  },
};
