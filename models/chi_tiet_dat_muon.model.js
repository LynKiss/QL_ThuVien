const db = require("../common/db");
const Chi_tiet_dat_muon = (chi_tiet_dat_muon) => {
  this.ma_dat_muon = chi_tiet_dat_muon.ma_dat_muon;
  this.ma_sach = chi_tiet_dat_muon.ma_sach;
  this.so_luong = chi_tiet_dat_muon.so_luong;
};

Chi_tiet_dat_muon.getById = (ma_dat_muon, callback) => {
  const sqlString = "CALL GetChiTietDatMuonById(?)";
  db.query(sqlString, [ma_dat_muon], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Chi_tiet_dat_muon.getAll = (callback) => {
  const sqlString = "CALL GetAllChiTietDatMuon()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Chi_tiet_dat_muon.insert = (chi_tiet_dat_muon, callBack) => {
  const sqlString = "CALL InsertChiTietDatMuon(?, ?, ?)";
  const params = [
    chi_tiet_dat_muon.ma_dat_muon,
    chi_tiet_dat_muon.ma_sach,
    chi_tiet_dat_muon.so_luong,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_dat_muon: res.insertId, ...chi_tiet_dat_muon });
  });
};

Chi_tiet_dat_muon.update = (chi_tiet_dat_muon, ma_dat_muon, callBack) => {
  const sqlString = "CALL UpdateChiTietDatMuon(?, ?, ?)";
  const params = [
    ma_dat_muon,
    chi_tiet_dat_muon.ma_sach,
    chi_tiet_dat_muon.so_luong,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack(
      "Cập nhật chi_tiet_dat_muon ma_dat_muon = " + ma_dat_muon + " thành công"
    );
  });
};

Chi_tiet_dat_muon.delete = (ma_dat_muon, callBack) => {
  const sqlString = "CALL DeleteChiTietDatMuon(?)";
  db.query(sqlString, [ma_dat_muon], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack(
      "Xóa chi_tiet_dat_muon ma_dat_muon = " + ma_dat_muon + " thành công"
    );
  });
};

module.exports = Chi_tiet_dat_muon;
