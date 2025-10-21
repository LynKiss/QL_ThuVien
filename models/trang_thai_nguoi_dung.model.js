const db = require("../common/db");

const TrangThaiNguoiDung = function (trang_thai) {
  this.ma_trang_thai = trang_thai.ma_trang_thai;
  this.ten_trang_thai = trang_thai.ten_trang_thai;
};

TrangThaiNguoiDung.getAll = (callback) => {
  const sql = "SELECT * FROM trang_thai_nguoi_dung";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

TrangThaiNguoiDung.getById = (ma_trang_thai, callback) => {
  const sql = "SELECT * FROM trang_thai_nguoi_dung WHERE ma_trang_thai = ?";
  db.query(sql, [ma_trang_thai], (err, result) => {
    if (err) return callback(err);
    callback(null, result[0] || null);
  });
};

TrangThaiNguoiDung.insert = (trang_thai, callback) => {
  const sql = "INSERT INTO trang_thai_nguoi_dung (ten_trang_thai) VALUES (?)";
  db.query(sql, [trang_thai.ten_trang_thai], (err, result) => {
    if (err) return callback(err);
    callback(null, { ma_trang_thai: result.insertId, ...trang_thai });
  });
};

TrangThaiNguoiDung.update = (ma_trang_thai, trang_thai, callback) => {
  const sql = "UPDATE trang_thai_nguoi_dung SET ten_trang_thai = ? WHERE ma_trang_thai = ?";
  db.query(sql, [trang_thai.ten_trang_thai, ma_trang_thai], (err, result) => {
    if (err) return callback(err);
    callback(null, result.affectedRows > 0 ? { ma_trang_thai, ...trang_thai } : null);
  });
};

TrangThaiNguoiDung.delete = (ma_trang_thai, callback) => {
  const sql = "DELETE FROM trang_thai_nguoi_dung WHERE ma_trang_thai = ?";
  db.query(sql, [ma_trang_thai], (err, result) => {
    if (err) return callback(err);
    callback(null, result.affectedRows > 0);
  });
};

module.exports = TrangThaiNguoiDung;
