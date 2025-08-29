const db = require("../common/db");
const Danh_gia = (danh_gia) => {
  this.ma_danh_gia = danh_gia.ma_danh_gia;
  this.ma_sach = danh_gia.ma_sach;
  this.ma_doc_gia = danh_gia.ma_doc_gia;
  this.diem = danh_gia.diem;
  this.binh_luan = danh_gia.binh_luan;
  this.ngay_danh_gia = danh_gia.ngay_danh_gia;
};

Danh_gia.getById = (ma_danh_gia, callback) => {
  const sqlString = "CALL GetDanhGiaById(?)";
  db.query(sqlString, [ma_danh_gia], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Danh_gia.getAll = (callback) => {
  const sqlString = "CALL GetAllDanhGia()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Danh_gia.insert = (danh_gia, callBack) => {
  const sqlString = "CALL InsertDanhGia(?, ?, ?, ?, ?)";
  const params = [
    danh_gia.ma_sach,
    danh_gia.ma_doc_gia,
    danh_gia.diem,
    danh_gia.binh_luan,
    danh_gia.ngay_danh_gia,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_danh_gia: res.insertId, ...danh_gia });
  });
};

Danh_gia.update = (danh_gia, ma_danh_gia, callBack) => {
  const sqlString = "CALL UpdateDanhGia(?, ?, ?, ?, ?, ?)";
  const params = [
    ma_danh_gia,
    danh_gia.ma_sach,
    danh_gia.ma_doc_gia,
    danh_gia.diem,
    danh_gia.binh_luan,
    danh_gia.ngay_danh_gia,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật danh_gia ma_danh_gia = " + ma_danh_gia + " thành công");
  });
};

Danh_gia.delete = (ma_danh_gia, callBack) => {
  const sqlString = "CALL DeleteDanhGia(?)";
  db.query(sqlString, [ma_danh_gia], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa danh_gia ma_danh_gia = " + ma_danh_gia + " thành công");
  });
};

module.exports = Danh_gia;
