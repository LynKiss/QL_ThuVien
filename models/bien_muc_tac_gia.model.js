const db = require("../common/db");

const Bien_muc_tac_gia = function (bien_muc_tac_gia) {
  this.ma_tac_gia = bien_muc_tac_gia.ma_tac_gia;
  this.ma_bien_muc = bien_muc_tac_gia.ma_bien_muc;
  this.ten_tac_gia = bien_muc_tac_gia.ten_tac_gia;
};

// ====================== LẤY TẤT CẢ ======================
Bien_muc_tac_gia.getAll = (callback) => {
  const sqlString = "SELECT * FROM bien_muc_tac_gia";
  db.query(sqlString, (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// ====================== LẤY THEO ID ======================
Bien_muc_tac_gia.getById = (id, callback) => {
  const sqlString = "SELECT * FROM bien_muc_tac_gia WHERE ma_tac_gia = ?";
  db.query(sqlString, [id], (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// ====================== THÊM MỚI ======================
Bien_muc_tac_gia.insert = (bien_muc_tac_gia, callback) => {
  const sqlString =
    "INSERT INTO bien_muc_tac_gia (ma_bien_muc, ten_tac_gia) VALUES (?, ?)";
  const params = [bien_muc_tac_gia.ma_bien_muc, bien_muc_tac_gia.ten_tac_gia];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, { ma_tac_gia: res.insertId, ...bien_muc_tac_gia });
  });
};

// ====================== CẬP NHẬT ======================
Bien_muc_tac_gia.update = (bien_muc_tac_gia, id, callback) => {
  const sqlString =
    "UPDATE bien_muc_tac_gia SET ma_bien_muc = ?, ten_tac_gia = ? WHERE ma_tac_gia = ?";
  const params = [
    bien_muc_tac_gia.ma_bien_muc,
    bien_muc_tac_gia.ten_tac_gia,
    id,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Cập nhật biên mục tác giả thành công" });
  });
};

// ====================== XÓA ======================
Bien_muc_tac_gia.delete = (id, callback) => {
  const sqlString = "DELETE FROM bien_muc_tac_gia WHERE ma_tac_gia = ?";
  db.query(sqlString, [id], (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Xóa biên mục tác giả thành công" });
  });
};

module.exports = Bien_muc_tac_gia;
