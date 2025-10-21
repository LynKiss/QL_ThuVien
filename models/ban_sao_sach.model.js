const db = require("../common/db");

const Ban_sao_sach = function (ban_sao_sach) {
  this.ma_ban_sao = ban_sao_sach.ma_ban_sao;
  this.ma_sach = ban_sao_sach.ma_sach;
  this.ma_vach = ban_sao_sach.ma_vach;
  this.rfid = ban_sao_sach.rfid;
  this.tinh_trang = ban_sao_sach.tinh_trang;
  this.vi_tri = ban_sao_sach.vi_tri;
  this.ngay_mua = ban_sao_sach.ngay_mua;
  this.gia_mua = ban_sao_sach.gia_mua;
};

// ====================== LẤY TẤT CẢ ======================
Ban_sao_sach.getAll = (callback) => {
  const sqlString = "SELECT * FROM ban_sao_sach";
  db.query(sqlString, (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// ====================== LẤY THEO ID ======================
Ban_sao_sach.getById = (id, callback) => {
  const sqlString = "SELECT * FROM ban_sao_sach WHERE ma_ban_sao = ?";
  db.query(sqlString, [id], (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// ====================== THÊM MỚI ======================
Ban_sao_sach.insert = (ban_sao_sach, callback) => {
  const sqlString =
    "INSERT INTO ban_sao_sach (ma_sach, ma_vach, rfid, tinh_trang, vi_tri, ngay_mua, gia_mua) VALUES (?, ?, ?, ?, ?, ?, ?)";
  const params = [
    ban_sao_sach.ma_sach,
    ban_sao_sach.ma_vach,
    ban_sao_sach.rfid,
    ban_sao_sach.tinh_trang,
    ban_sao_sach.vi_tri,
    ban_sao_sach.ngay_mua,
    ban_sao_sach.gia_mua,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, { ma_ban_sao: res.insertId, ...ban_sao_sach });
  });
};

// ====================== CẬP NHẬT ======================
Ban_sao_sach.update = (ban_sao_sach, id, callback) => {
  const sqlString =
    "UPDATE ban_sao_sach SET ma_sach = ?, ma_vach = ?, rfid = ?, tinh_trang = ?, vi_tri = ?, ngay_mua = ?, gia_mua = ? WHERE ma_ban_sao = ?";
  const params = [
    ban_sao_sach.ma_sach,
    ban_sao_sach.ma_vach,
    ban_sao_sach.rfid,
    ban_sao_sach.tinh_trang,
    ban_sao_sach.vi_tri,
    ban_sao_sach.ngay_mua,
    ban_sao_sach.gia_mua,
    id,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Cập nhật bản sao sách thành công" });
  });
};

// ====================== XÓA ======================
Ban_sao_sach.delete = (id, callback) => {
  const sqlString = "DELETE FROM ban_sao_sach WHERE ma_ban_sao = ?";
  db.query(sqlString, [id], (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Xóa bản sao sách thành công" });
  });
};

module.exports = Ban_sao_sach;
