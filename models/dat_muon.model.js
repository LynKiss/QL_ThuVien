const db = require("../common/db");
const Dat_muon = (dat_muon) => {
  this.ma_dat_muon = dat_muon.ma_dat_muon;
  this.ma_doc_gia = dat_muon.ma_doc_gia;
  this.ngay_dat = dat_muon.ngay_dat;
  this.ngay_du_kien_muon = dat_muon.ngay_du_kien_muon;
  this.trang_thai = dat_muon.trang_thai;
  this.ghi_chu = dat_muon.ghi_chu;
  this.ma_nhan_vien = dat_muon.ma_nhan_vien;
};

Dat_muon.getById = (ma_dat_muon, callback) => {
  const sqlString = "CALL GetDatMuonById(?)";
  db.query(sqlString, [ma_dat_muon], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Dat_muon.getAll = (callback) => {
  const sqlString = "CALL GetAllDatMuon()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Dat_muon.insert = (dat_muon, callBack) => {
  const sqlString = "CALL InsertDatMuon(?, ?, ?, ?, ?, ?)";
  const params = [
    dat_muon.ma_doc_gia,
    dat_muon.ngay_dat,
    dat_muon.ngay_du_kien_muon,
    dat_muon.trang_thai,
    dat_muon.ghi_chu,
    dat_muon.ma_nhan_vien,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_dat_muon: res.insertId, ...dat_muon });
  });
};

Dat_muon.update = (dat_muon, ma_dat_muon, callBack) => {
  const sqlString = "CALL UpdateDatMuon(?, ?, ?, ?, ?, ?, ?)";
  const params = [
    ma_dat_muon,
    dat_muon.ma_doc_gia,
    dat_muon.ngay_dat,
    dat_muon.ngay_du_kien_muon,
    dat_muon.trang_thai,
    dat_muon.ghi_chu,
    dat_muon.ma_nhan_vien,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật dat_muon ma_dat_muon = " + ma_dat_muon + " thành công");
  });
};

Dat_muon.delete = (ma_dat_muon, callBack) => {
  const sqlString = "CALL DeleteDatMuon(?)";
  db.query(sqlString, [ma_dat_muon], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa dat_muon ma_dat_muon = " + ma_dat_muon + " thành công");
  });
};

module.exports = Dat_muon;
