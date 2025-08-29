const db = require("../common/db");
const Vai_tro = (vai_tro) => {
  this.ma_vai_tro = vai_tro.ma_vai_tro;
  this.ten_vai_tro = vai_tro.ten_vai_tro;
};

Vai_tro.getById = (ma_vai_tro, callback) => {
  const sqlString = "CALL GetVaiTroById(?)";
  db.query(sqlString, [ma_vai_tro], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Vai_tro.getAll = (callback) => {
  const sqlString = "CALL GetAllVaiTro()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Vai_tro.insert = (vai_tro, callBack) => {
  const sqlString = "CALL InsertVaiTro(?)";
  db.query(sqlString, [vai_tro.ten_vai_tro], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_vai_tro: res.insertId, ...vai_tro });
  });
};

Vai_tro.update = (vai_tro, ma_vai_tro, callBack) => {
  const sqlString = "CALL UpdateVaiTro(?, ?)";
  db.query(sqlString, [ma_vai_tro, vai_tro.ten_vai_tro], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật vai_tro ma_vai_tro = " + ma_vai_tro + " thành công");
  });
};

Vai_tro.delete = (ma_vai_tro, callBack) => {
  const sqlString = "CALL DeleteVaiTro(?)";
  db.query(sqlString, [ma_vai_tro], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa vai_tro ma_vai_tro = " + ma_vai_tro + " thành công");
  });
};

module.exports = Vai_tro;
