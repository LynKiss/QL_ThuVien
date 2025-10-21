const db = require("../common/db");

const Cau_hinh = function (cau_hinh) {
  this.ten_key = cau_hinh.ten_key;
  this.gia_tri = cau_hinh.gia_tri;
};

// ====================== LẤY TẤT CẢ ======================
Cau_hinh.getAll = (callback) => {
  const sqlString = "SELECT * FROM cau_hinh";
  db.query(sqlString, (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// ====================== LẤY THEO TEN_KEY ======================
Cau_hinh.getById = (ten_key, callback) => {
  const sqlString = "SELECT * FROM cau_hinh WHERE ten_key = ?";
  db.query(sqlString, [ten_key], (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// ====================== THÊM MỚI ======================
Cau_hinh.insert = (cau_hinh, callback) => {
  const sqlString = "INSERT INTO cau_hinh (ten_key, gia_tri) VALUES (?, ?)";
  const params = [cau_hinh.ten_key, cau_hinh.gia_tri];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, { ten_key: cau_hinh.ten_key, ...cau_hinh });
  });
};

// ====================== CẬP NHẬT ======================
Cau_hinh.update = (cau_hinh, ten_key, callback) => {
  const sqlString = "UPDATE cau_hinh SET gia_tri = ? WHERE ten_key = ?";
  const params = [cau_hinh.gia_tri, ten_key];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Cập nhật cấu hình thành công" });
  });
};

// ====================== XÓA ======================
Cau_hinh.delete = (ten_key, callback) => {
  const sqlString = "DELETE FROM cau_hinh WHERE ten_key = ?";
  db.query(sqlString, [ten_key], (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Xóa cấu hình thành công" });
  });
};

module.exports = Cau_hinh;
