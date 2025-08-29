const db = require("../common/db");
const Ngon_ngu = (ngon_ngu) => {
  this.ma_ngon_ngu = ngon_ngu.ma_ngon_ngu;
  this.ten_ngon_ngu = ngon_ngu.ten_ngon_ngu;
};

Ngon_ngu.getById = (ma_ngon_ngu, callback) => {
  const sqlString = "CALL GetNgonNguById(?)";
  db.query(sqlString, [ma_ngon_ngu], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Ngon_ngu.getAll = (callback) => {
  const sqlString = "CALL GetAllNgonNgu()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Ngon_ngu.insert = (ngon_ngu, callBack) => {
  const sqlString = "CALL InsertNgonNgu(?)";
  db.query(sqlString, [ngon_ngu.ten_ngon_ngu], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_ngon_ngu: res.insertId, ...ngon_ngu });
  });
};

Ngon_ngu.update = (ngon_ngu, ma_ngon_ngu, callBack) => {
  const sqlString = "CALL UpdateNgonNgu(?, ?)";
  db.query(sqlString, [ma_ngon_ngu, ngon_ngu.ten_ngon_ngu], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật ngon_ngu ma_ngon_ngu = " + ma_ngon_ngu + " thành công");
  });
};

Ngon_ngu.delete = (ma_ngon_ngu, callBack) => {
  const sqlString = "CALL DeleteNgonNgu(?)";
  db.query(sqlString, [ma_ngon_ngu], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa ngon_ngu ma_ngon_ngu = " + ma_ngon_ngu + " thành công");
  });
};

module.exports = Ngon_ngu;
