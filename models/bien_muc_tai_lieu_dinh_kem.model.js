const db = require("../common/db");

const Bien_muc_tai_lieu_dinh_kem = function (bien_muc_tai_lieu_dinh_kem) {
  this.ma_tai_lieu = bien_muc_tai_lieu_dinh_kem.ma_tai_lieu;
  this.ma_bien_muc = bien_muc_tai_lieu_dinh_kem.ma_bien_muc;
  this.ten_file = bien_muc_tai_lieu_dinh_kem.ten_file;
  this.duong_dan = bien_muc_tai_lieu_dinh_kem.duong_dan;
  this.loai_file = bien_muc_tai_lieu_dinh_kem.loai_file;
  this.ngay_tao = bien_muc_tai_lieu_dinh_kem.ngay_tao;
};

// ====================== LẤY TẤT CẢ ======================
Bien_muc_tai_lieu_dinh_kem.getAll = (callback) => {
  const sqlString = "SELECT * FROM bien_muc_tai_lieu_dinh_kem";
  db.query(sqlString, (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// ====================== LẤY THEO ID ======================
Bien_muc_tai_lieu_dinh_kem.getById = (id, callback) => {
  const sqlString =
    "SELECT * FROM bien_muc_tai_lieu_dinh_kem WHERE ma_tai_lieu = ?";
  db.query(sqlString, [id], (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// ====================== THÊM MỚI ======================
Bien_muc_tai_lieu_dinh_kem.insert = (bien_muc_tai_lieu_dinh_kem, callback) => {
  const sqlString =
    "INSERT INTO bien_muc_tai_lieu_dinh_kem (ma_bien_muc, ten_file, duong_dan, loai_file, ngay_tao) VALUES (?, ?, ?, ?, ?)";
  const params = [
    bien_muc_tai_lieu_dinh_kem.ma_bien_muc,
    bien_muc_tai_lieu_dinh_kem.ten_file,
    bien_muc_tai_lieu_dinh_kem.duong_dan,
    bien_muc_tai_lieu_dinh_kem.loai_file,
    bien_muc_tai_lieu_dinh_kem.ngay_tao,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, {
      ma_tai_lieu: res.insertId,
      ...bien_muc_tai_lieu_dinh_kem,
    });
  });
};

// ====================== CẬP NHẬT ======================
Bien_muc_tai_lieu_dinh_kem.update = (
  bien_muc_tai_lieu_dinh_kem,
  id,
  callback
) => {
  const sqlString =
    "UPDATE bien_muc_tai_lieu_dinh_kem SET ma_bien_muc = ?, ten_file = ?, duong_dan = ?, loai_file = ?, ngay_tao = ? WHERE ma_tai_lieu = ?";
  const params = [
    bien_muc_tai_lieu_dinh_kem.ma_bien_muc,
    bien_muc_tai_lieu_dinh_kem.ten_file,
    bien_muc_tai_lieu_dinh_kem.duong_dan,
    bien_muc_tai_lieu_dinh_kem.loai_file,
    bien_muc_tai_lieu_dinh_kem.ngay_tao,
    id,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, {
      message: "Cập nhật biên mục tài liệu đính kèm thành công",
    });
  });
};

// ====================== XÓA ======================
Bien_muc_tai_lieu_dinh_kem.delete = (id, callback) => {
  const sqlString =
    "DELETE FROM bien_muc_tai_lieu_dinh_kem WHERE ma_tai_lieu = ?";
  db.query(sqlString, [id], (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Xóa biên mục tài liệu đính kèm thành công" });
  });
};

module.exports = Bien_muc_tai_lieu_dinh_kem;
