const db = require("../common/db");
const Tin_nhan = (tin_nhan) => {
  this.ma_tin_nhan = tin_nhan.ma_tin_nhan;
  this.ma_nguoi_gui = tin_nhan.ma_nguoi_gui;
  this.ma_nguoi_nhan = tin_nhan.ma_nguoi_nhan;
  this.noi_dung = tin_nhan.noi_dung;
  this.thoi_gian = tin_nhan.thoi_gian;
};

Tin_nhan.getById = (ma_tin_nhan, callback) => {
  const sqlString = "CALL GetTinNhanById(?)";
  db.query(sqlString, [ma_tin_nhan], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Tin_nhan.getAll = (callback) => {
  const sqlString = "CALL GetAllTinNhan()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Tin_nhan.insert = (tin_nhan, callBack) => {
  const sqlString = "CALL InsertTinNhan(?, ?, ?, ?)";
  const params = [
    tin_nhan.ma_nguoi_gui,
    tin_nhan.ma_nguoi_nhan,
    tin_nhan.noi_dung,
    tin_nhan.thoi_gian,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_tin_nhan: res.insertId, ...tin_nhan });
  });
};

Tin_nhan.update = (tin_nhan, ma_tin_nhan, callBack) => {
  const sqlString = "CALL UpdateTinNhan(?, ?, ?, ?, ?)";
  const params = [
    ma_tin_nhan,
    tin_nhan.ma_nguoi_gui,
    tin_nhan.ma_nguoi_nhan,
    tin_nhan.noi_dung,
    tin_nhan.thoi_gian,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật tin_nhan ma_tin_nhan = " + ma_tin_nhan + " thành công");
  });
};

Tin_nhan.delete = (ma_tin_nhan, callBack) => {
  const sqlString = "CALL DeleteTinNhan(?)";
  db.query(sqlString, [ma_tin_nhan], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa tin_nhan ma_tin_nhan = " + ma_tin_nhan + " thành công");
  });
};

module.exports = Tin_nhan;
