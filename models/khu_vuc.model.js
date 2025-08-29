const db = require("../common/db");
const Khu_vuc = (khu_vuc) => {
  this.ma_khu_vuc = khu_vuc.ma_khu_vuc;
  this.ten_khu_vuc = khu_vuc.ten_khu_vuc;
};

Khu_vuc.getById = (ma_khu_vuc, callback) => {
  const sqlString = "CALL GetKhuVucById(?)";
  db.query(sqlString, [ma_khu_vuc], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Khu_vuc.getAll = (callback) => {
  const sqlString = "CALL GetAllKhuVuc()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Khu_vuc.insert = (khu_vuc, callBack) => {
  const sqlString = "CALL InsertKhuVuc(?)";
  db.query(sqlString, [khu_vuc.ten_khu_vuc], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_khu_vuc: res.insertId, ...khu_vuc });
  });
};

Khu_vuc.update = (khu_vuc, ma_khu_vuc, callBack) => {
  const sqlString = "CALL UpdateKhuVuc(?, ?)";
  db.query(sqlString, [ma_khu_vuc, khu_vuc.ten_khu_vuc], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật khu_vuc ma_khu_vuc = " + ma_khu_vuc + " thành công");
  });
};

Khu_vuc.delete = (ma_khu_vuc, callBack) => {
  const sqlString = "CALL DeleteKhuVuc(?)";
  db.query(sqlString, [ma_khu_vuc], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa khu_vuc ma_khu_vuc = " + ma_khu_vuc + " thành công");
  });
};

module.exports = Khu_vuc;
