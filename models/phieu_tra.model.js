const db = require("../common/db");
const Phieu_tra = (phieu_tra) => {
  this.ma_phieu_tra = phieu_tra.ma_phieu_tra;
  this.ma_phieu_muon = phieu_tra.ma_phieu_muon;
  this.ma_nhan_vien = phieu_tra.ma_nhan_vien;
  this.ngay_tra = phieu_tra.ngay_tra;
  this.ghi_chu = phieu_tra.ghi_chu;
};

Phieu_tra.getById = (ma_phieu_tra, callback) => {
  const sqlString = "CALL GetPhieuTraById(?)";
  db.query(sqlString, [ma_phieu_tra], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Phieu_tra.getAll = (callback) => {
  const sqlString = "CALL GetAllPhieuTra()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Phieu_tra.insert = (phieu_tra, callBack) => {
  const sqlString = "CALL InsertPhieuTra(?, ?, ?, ?)";
  const params = [
    phieu_tra.ma_phieu_muon,
    phieu_tra.ma_nhan_vien,
    phieu_tra.ngay_tra,
    phieu_tra.ghi_chu,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_phieu_tra: res.insertId, ...phieu_tra });
  });
};

Phieu_tra.update = (phieu_tra, ma_phieu_tra, callBack) => {
  const sqlString = "CALL UpdatePhieuTra(?, ?, ?, ?, ?)";
  const params = [
    ma_phieu_tra,
    phieu_tra.ma_phieu_muon,
    phieu_tra.ma_nhan_vien,
    phieu_tra.ngay_tra,
    phieu_tra.ghi_chu,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack(
      "Cập nhật phieu_tra ma_phieu_tra = " + ma_phieu_tra + " thành công"
    );
  });
};

Phieu_tra.delete = (ma_phieu_tra, callBack) => {
  const sqlString = "CALL DeletePhieuTra(?)";
  db.query(sqlString, [ma_phieu_tra], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa phieu_tra ma_phieu_tra = " + ma_phieu_tra + " thành công");
  });
};

module.exports = Phieu_tra;
