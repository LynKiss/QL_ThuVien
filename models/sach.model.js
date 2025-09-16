const db = require("../common/db");
const Sach = (sach) => {
  this.ma_sach = sach.ma_sach;
  this.tieu_de = sach.tieu_de;
  this.tac_gia = sach.tac_gia;
  this.ISBN = sach.ISBN;
  this.so_luong = sach.so_luong;
  this.so_trang = sach.so_trang;
  this.mo_ta = sach.mo_ta;
  this.hinh_bia = sach.hinh_bia;
  this.ma_nxb = sach.ma_nxb;
  this.ma_danh_muc = sach.ma_danh_muc;
  this.ma_the_loai = sach.ma_the_loai;
  this.ma_ngon_ngu = sach.ma_ngon_ngu;
  this.ma_khu_vuc = sach.ma_khu_vuc;
  this.ma_ncc = sach.ma_ncc;
};

Sach.getById = (ma_sach, callback) => {
  const sqlString = "CALL GetSachById(?)";
  db.query(sqlString, [ma_sach], (err, result) => {
    if (err) {
      return callback(err);
    }

    callback(result[0]);
  });
};

Sach.getAll = (callback) => {
  const sqlString = "CALL GetAllSach()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Sach.insert = (sach, callBack) => {
  const sqlString = "CALL InsertSach(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  const params = [
    sach.tieu_de,
    sach.tac_gia,
    sach.ISBN,
    sach.so_luong,
    sach.so_trang,
    sach.mo_ta,
    sach.hinh_bia,
    sach.ma_nxb,
    sach.ma_danh_muc,
    sach.ma_the_loai,
    sach.ma_ngon_ngu,
    sach.ma_khu_vuc,
    sach.ma_ncc,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }

    callBack({ ma_sach: res.insertId, ...sach });
  });
};

Sach.update = (sach, ma_sach, callBack) => {
  const sqlString = "CALL UpdateSach(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  const params = [
    ma_sach,
    sach.tieu_de,
    sach.tac_gia,
    sach.ISBN,
    sach.so_luong,
    sach.so_trang,
    sach.mo_ta,
    sach.hinh_bia,
    sach.ma_nxb,
    sach.ma_danh_muc,
    sach.ma_the_loai,
    sach.ma_ngon_ngu,
    sach.ma_khu_vuc,
    sach.ma_ncc,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật sach ma_sach = " + ma_sach + " thành công");
  });
};

Sach.delete = (ma_sach, callBack) => {
  const sqlString = "CALL DeleteSach(?)";
  db.query(sqlString, [ma_sach], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa sach ma_sach = " + ma_sach + " thành công");
  });
};

Sach.search = (keyword, callback) => {
  const sqlString = "CALL SearchSach(?)";
  db.query(sqlString, [keyword], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Sach.getMostBorrowed = (limit, callback) => {
  const sqlString = "CALL GetMostBorrowedBooks(?)";
  db.query(sqlString, [limit], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Sach.advancedSearch = (params, callback) => {
  const sqlString = "CALL AdvancedSearchSach(?, ?, ?)";
  const { tieu_de, tac_gia, ISBN } = params;
  db.query(
    sqlString,
    [tieu_de || null, tac_gia || null, ISBN || null],
    (err, result) => {
      if (err) {
        return callback(err);
      }
      callback(result[0]);
    }
  );
};

// Lấy danh sách sách đầy đủ thông tin
Sach.getAllFullInfo = (callback) => {
  const Sach = {};
  const sqlString = "CALL GetAllSachFullInfo()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err, null);
    }
    // result[0] chứa dữ liệu từ stored procedure
    callback(null, result[0]);
  });
};

module.exports = Sach;
