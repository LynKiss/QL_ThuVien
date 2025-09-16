const db = require("../common/db");

const Dat_muon = function (dat_muon) {
  this.ma_dat_muon = dat_muon.ma_dat_muon;
  this.ma_nguoi_dung = dat_muon.ma_nguoi_dung; // ⚠️ sửa lại cho khớp DB
  this.ngay_dat = dat_muon.ngay_dat;
  this.ngay_du_kien_muon = dat_muon.ngay_du_kien_muon;
  this.trang_thai = dat_muon.trang_thai;
  this.ghi_chu = dat_muon.ghi_chu;
  this.ma_nhan_vien = dat_muon.ma_nhan_vien;
};

// Lấy 1 đơn đặt mượn
Dat_muon.getById = (ma_dat_muon, callback) => {
  const sql = "CALL GetDatMuonById(?)";
  db.query(sql, [ma_dat_muon], (err, result) => {
    if (err) return callback(err, null);
    callback(null, result[0]);
  });
};

// Lấy tất cả đơn đặt mượn
Dat_muon.getAll = (callback) => {
  const sql = "CALL GetAllDatMuon()";
  db.query(sql, (err, result) => {
    if (err) return callback(err, null);
    callback(null, result[0]);
  });
};

// Thêm mới
Dat_muon.insert = (dat_muon, callback) => {
  const sql = "CALL InsertDatMuon(?, ?, ?, ?, ?, ?)";
  const params = [
    dat_muon.ma_nguoi_dung, // ⚠️ sửa từ ma_doc_gia → ma_nguoi_dung
    dat_muon.ngay_dat,
    dat_muon.ngay_du_kien_muon,
    dat_muon.trang_thai,
    dat_muon.ghi_chu,
    dat_muon.ma_nhan_vien,
  ];
  db.query(sql, params, (err, res) => {
    if (err) return callback(err, null);
    // nếu SP có SELECT LAST_INSERT_ID() AS ma_dat_muon;
    const newId = res[0][0]?.ma_dat_muon;
    callback(null, { ma_dat_muon: newId, ...dat_muon });
  });
};

// Cập nhật
Dat_muon.update = (dat_muon, ma_dat_muon, callback) => {
  const sql = "CALL UpdateDatMuon(?, ?, ?, ?, ?, ?, ?)";
  const params = [
    ma_dat_muon,
    dat_muon.ma_nguoi_dung,
    dat_muon.ngay_dat,
    dat_muon.ngay_du_kien_muon,
    dat_muon.trang_thai,
    dat_muon.ghi_chu,
    dat_muon.ma_nhan_vien,
  ];
  db.query(sql, params, (err, res) => {
    if (err) return callback(err, null);
    callback(null, { message: `Cập nhật dat_muon ${ma_dat_muon} thành công` });
  });
};

// Xóa
Dat_muon.delete = (ma_dat_muon, callback) => {
  const sql = "CALL DeleteDatMuon(?)";
  db.query(sql, [ma_dat_muon], (err, res) => {
    if (err) return callback(err, null);
    callback(null, { message: `Xóa dat_muon ${ma_dat_muon} thành công` });
  });
};

module.exports = Dat_muon;
