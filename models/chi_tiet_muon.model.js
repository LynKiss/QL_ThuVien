const db = require("../common/db");
const Chi_tiet_muon = (chi_tiet_muon) => {
  this.ma_phieu_muon = chi_tiet_muon.ma_phieu_muon;
  this.ma_sach = chi_tiet_muon.ma_sach;
  this.so_luong = chi_tiet_muon.so_luong;
  this.trang_thai_sach = chi_tiet_muon.trang_thai_sach;
};

Chi_tiet_muon.getById = (ma_phieu_muon, callback) => {
  const sqlString = "CALL GetChiTietMuonById(?)";
  db.query(sqlString, [ma_phieu_muon], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Chi_tiet_muon.getAll = (callback) => {
  const sqlString = "CALL GetAllChiTietMuon()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Chi_tiet_muon.insert = (chi_tiet_muon, callBack) => {
  const sqlString = "CALL InsertChiTietMuon(?, ?, ?, ?)";
  const params = [
    chi_tiet_muon.ma_phieu_muon,
    chi_tiet_muon.ma_sach,
    chi_tiet_muon.so_luong,
    chi_tiet_muon.trang_thai_sach,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_phieu_muon: res.insertId, ...chi_tiet_muon });
  });
};

Chi_tiet_muon.update = (chi_tiet_muon, ma_phieu_muon, callBack) => {
  const sqlString = "CALL UpdateChiTietMuon(?, ?, ?, ?)";
  const params = [
    ma_phieu_muon,
    chi_tiet_muon.ma_sach,
    chi_tiet_muon.so_luong,
    chi_tiet_muon.trang_thai_sach,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack(
      "Cập nhật chi_tiet_muon ma_phieu_muon = " + ma_phieu_muon + " thành công"
    );
  });
};

Chi_tiet_muon.delete = (ma_phieu_muon, callBack) => {
  const sqlString = "CALL DeleteChiTietMuon(?)";
  db.query(sqlString, [ma_phieu_muon], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack(
      "Xóa chi_tiet_muon ma_phieu_muon = " + ma_phieu_muon + " thành công"
    );
  });
};

module.exports = Chi_tiet_muon;
