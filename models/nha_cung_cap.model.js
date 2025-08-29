const db = require("../common/db");
const Nha_cung_cap = (nha_cung_cap) => {
  this.ma_ncc = nha_cung_cap.ma_ncc;
  this.ten_ncc = nha_cung_cap.ten_ncc;
  this.dia_chi = nha_cung_cap.dia_chi;
  this.so_dien_thoai = nha_cung_cap.so_dien_thoai;
};

Nha_cung_cap.getById = (ma_ncc, callback) => {
  const sqlString = "CALL GetNhaCungCapById(?)";
  db.query(sqlString, [ma_ncc], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nha_cung_cap.getAll = (callback) => {
  const sqlString = "CALL GetAllNhaCungCap()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nha_cung_cap.insert = (nha_cung_cap, callBack) => {
  const sqlString = "CALL InsertNhaCungCap(?, ?, ?)";
  const params = [
    nha_cung_cap.ten_ncc,
    nha_cung_cap.dia_chi,
    nha_cung_cap.so_dien_thoai,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_ncc: res.insertId, ...nha_cung_cap });
  });
};

Nha_cung_cap.update = (nha_cung_cap, ma_ncc, callBack) => {
  const sqlString = "CALL UpdateNhaCungCap(?, ?, ?, ?)";
  const params = [
    ma_ncc,
    nha_cung_cap.ten_ncc,
    nha_cung_cap.dia_chi,
    nha_cung_cap.so_dien_thoai,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật nha_cung_cap ma_ncc = " + ma_ncc + " thành công");
  });
};

Nha_cung_cap.delete = (ma_ncc, callBack) => {
  const sqlString = "CALL DeleteNhaCungCap(?)";
  db.query(sqlString, [ma_ncc], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa nha_cung_cap ma_ncc = " + ma_ncc + " thành công");
  });
};

module.exports = Nha_cung_cap;
