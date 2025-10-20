// models/notification.model.js
const db = require("../common/db");

const Notification = function (notification) {
  this.ma_tb = notification.ma_tb;
  this.ma_nguoi_dung = notification.ma_nguoi_dung;
  this.noi_dung = notification.noi_dung;
  this.ngay_gui = notification.ngay_gui;
  this.da_doc = notification.da_doc;
  this.loai_tb = notification.loai_tb;
  this.meta = notification.meta;
};

Notification.getByUser = (ma_nguoi_dung, callback) => {
  const sqlString =
    "SELECT * FROM notification WHERE ma_nguoi_dung = ? ORDER BY ngay_gui DESC";
  db.query(sqlString, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

Notification.markAsRead = (ma_tb, callback) => {
  const sqlString = "UPDATE notification SET da_doc = 1 WHERE ma_tb = ?";
  db.query(sqlString, [ma_tb], (err, result) => {
    if (err) return callback(err);
    callback(null, { affectedRows: result.affectedRows });
  });
};

Notification.getUnreadCount = (ma_nguoi_dung, callback) => {
  const sqlString =
    "SELECT COUNT(*) as unread_count FROM notification WHERE ma_nguoi_dung = ? AND da_doc = 0";
  db.query(sqlString, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

module.exports = Notification;
