const db = require("../common/db");
const Danh_muc = (danh_muc) => {
  this.ma_danh_muc = danh_muc.ma_danh_muc;
  this.ten_danh_muc = danh_muc.ten_danh_muc;
};

Danh_muc.getById = (ma_danh_muc, callback) => {
  const sqlString = "CALL GetDanhMucById(?)";
  db.query(sqlString, [ma_danh_muc], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Danh_muc.getAll = (callback) => {
  const sqlString = "CALL GetAllDanhMuc()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Danh_muc.insert = (danh_muc, callBack) => {
  const sqlString = "CALL InsertDanhMuc(?)";
  db.query(sqlString, [danh_muc.ten_danh_muc], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_danh_muc: res.insertId, ...danh_muc });
  });
};

Danh_muc.update = (danh_muc, ma_danh_muc, callBack) => {
  const sqlString = "CALL UpdateDanhMuc(?, ?)";
  db.query(sqlString, [ma_danh_muc, danh_muc.ten_danh_muc], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật danh_muc ma_danh_muc = " + ma_danh_muc + " thành công");
  });
};

Danh_muc.delete = (ma_danh_muc, callBack) => {
  const sqlString = "CALL DeleteDanhMuc(?)";
  db.query(sqlString, [ma_danh_muc], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa danh_muc ma_danh_muc = " + ma_danh_muc + " thành công");
  });
};

module.exports = Danh_muc;
