const db = require("../common/db");
const The_loai = (the_loai) => {
  this.ma_the_loai = the_loai.ma_the_loai;
  this.ten_the_loai = the_loai.ten_the_loai;
};

The_loai.getById = (ma_the_loai, callback) => {
  const sqlString = "CALL GetTheLoaiById(?)";
  db.query(sqlString, [ma_the_loai], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

The_loai.getAll = (callback) => {
  const sqlString = "CALL GetAllTheLoai()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

The_loai.insert = (the_loai, callBack) => {
  const sqlString = "CALL InsertTheLoai(?)";
  db.query(sqlString, [the_loai.ten_the_loai], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_the_loai: res.insertId, ...the_loai });
  });
};

The_loai.update = (the_loai, ma_the_loai, callBack) => {
  const sqlString = "CALL UpdateTheLoai(?, ?)";
  db.query(sqlString, [ma_the_loai, the_loai.ten_the_loai], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật the_loai ma_the_loai = " + ma_the_loai + " thành công");
  });
};

The_loai.delete = (ma_the_loai, callBack) => {
  const sqlString = "CALL DeleteTheLoai(?)";
  db.query(sqlString, [ma_the_loai], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa the_loai ma_the_loai = " + ma_the_loai + " thành công");
  });
};

module.exports = The_loai;
