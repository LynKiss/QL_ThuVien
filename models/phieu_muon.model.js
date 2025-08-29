const db = require("../common/db");
const Phieu_muon = (phieu_muon) => {
  this.ma_phieu_muon = phieu_muon.ma_phieu_muon;
  this.ma_doc_gia = phieu_muon.ma_doc_gia;
  this.ma_nhan_vien = phieu_muon.ma_nhan_vien;
  this.ngay_muon = phieu_muon.ngay_muon;
  this.ngay_du_kien_tra = phieu_muon.ngay_du_kien_tra;
  this.trang_thai = phieu_muon.trang_thai;
};

Phieu_muon.getById = (ma_phieu_muon, callback) => {
  const sqlString = "CALL GetPhieuMuonById(?)";
  db.query(sqlString, [ma_phieu_muon], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Phieu_muon.getAll = (callback) => {
  const sqlString = "CALL GetAllPhieuMuon()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Phieu_muon.insert = (phieu_muon, callBack) => {
  const sqlString = "CALL InsertPhieuMuon(?, ?, ?, ?, ?, ?)";
  const params = [
    phieu_muon.ma_doc_gia,
    phieu_muon.ma_nhan_vien,
    phieu_muon.ngay_muon,
    phieu_muon.ngay_du_kien_tra,
    phieu_muon.trang_thai,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_phieu_muon: res.insertId, ...phieu_muon });
  });
};

Phieu_muon.update = (phieu_muon, ma_phieu_muon, callBack) => {
  const sqlString = "CALL UpdatePhieuMuon(?, ?, ?, ?, ?, ?, ?)";
  const params = [
    ma_phieu_muon,
    phieu_muon.ma_doc_gia,
    phieu_muon.ma_nhan_vien,
    phieu_muon.ngay_muon,
    phieu_muon.ngay_du_kien_tra,
    phieu_muon.trang_thai,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack(
      "Cập nhật phieu_muon ma_phieu_muon = " + ma_phieu_muon + " thành công"
    );
  });
};

Phieu_muon.delete = (ma_phieu_muon, callBack) => {
  const sqlString = "CALL DeletePhieuMuon(?)";
  db.query(sqlString, [ma_phieu_muon], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa phieu_muon ma_phieu_muon = " + ma_phieu_muon + " thành công");
  });
};

module.exports = Phieu_muon;
