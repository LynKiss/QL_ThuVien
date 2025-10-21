const db = require("../common/db");

const Chi_tiet_dat_muon = function (chi_tiet_dat_muon) {
  this.ma_chi_tiet_dat_muon = chi_tiet_dat_muon.ma_chi_tiet_dat_muon;
  this.ma_dat_muon = chi_tiet_dat_muon.ma_dat_muon;
  this.ma_sach = chi_tiet_dat_muon.ma_sach;
  this.so_luong = chi_tiet_dat_muon.so_luong;
};

// ====================== LẤY TẤT CẢ ======================
Chi_tiet_dat_muon.getAll = (callback) => {
  const sqlString = "CALL GetAllChiTietDatMuon()";
  db.query(sqlString, (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

// ====================== LẤY THEO ID ======================
Chi_tiet_dat_muon.getById = (id, callback) => {
  const sqlString = "CALL GetChiTietDatMuonById(?)";
  db.query(sqlString, [id], (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

// ====================== THÊM MỚI ======================
Chi_tiet_dat_muon.insert = (chi_tiet_dat_muon, callback) => {
  const sqlString = "CALL InsertChiTietDatMuon(?, ?, ?)";
  const params = [
    chi_tiet_dat_muon.ma_dat_muon,
    chi_tiet_dat_muon.ma_sach,
    chi_tiet_dat_muon.so_luong,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    const newId = res[0][0]?.ma_chi_tiet_dat_muon;
    callback(null, { ma_chi_tiet_dat_muon: newId, ...chi_tiet_dat_muon });
  });
};

// ====================== CẬP NHẬT ======================
Chi_tiet_dat_muon.update = (chi_tiet_dat_muon, id, callback) => {
  const sqlString = "CALL UpdateChiTietDatMuon(?, ?, ?, ?)";
  const params = [
    id,
    chi_tiet_dat_muon.ma_dat_muon,
    chi_tiet_dat_muon.ma_sach,
    chi_tiet_dat_muon.so_luong,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Cập nhật chi tiết đặt mượn thành công" });
  });
};

// ====================== XÓA ======================
Chi_tiet_dat_muon.delete = (id, callback) => {
  const sqlString = "CALL DeleteChiTietDatMuon(?)";
  db.query(sqlString, [id], (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Xóa chi tiết đặt mượn thành công" });
  });
};

module.exports = Chi_tiet_dat_muon;
