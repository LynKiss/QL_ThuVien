const db = require("../common/db");

const Nguoi_dung = (nguoi_dung) => {
  this.ma_nguoi_dung = nguoi_dung.ma_nguoi_dung;
  this.ho_ten = nguoi_dung.ho_ten;
  this.email = nguoi_dung.email;
  this.mat_khau = nguoi_dung.mat_khau;
  this.ngay_sinh = nguoi_dung.ngay_sinh;
  this.dia_chi = nguoi_dung.dia_chi;
  this.so_dien_thoai = nguoi_dung.so_dien_thoai;
  this.ma_vai_tro = nguoi_dung.ma_vai_tro;
  this.ngay_dang_ky = nguoi_dung.ngay_dang_ky;
  this.ngay_het_han = nguoi_dung.ngay_het_han;
  this.ma_trang_thai = nguoi_dung.ma_trang_thai;
};

Nguoi_dung.getById = (ma_nguoi_dung, callback) => {
  const sqlString = "CALL GetNguoiDungById(?)";
  db.query(sqlString, [ma_nguoi_dung], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nguoi_dung.getAll = (callback) => {
  const sqlString = "CALL GetAllNguoiDung()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nguoi_dung.insert = (nguoi_dung, callback) => {
  const sqlString = "CALL InsertNguoiDung(?, ?, ?, ?, ?, ?, ?, ?, ?)";
  const params = [
    nguoi_dung.ho_ten,
    nguoi_dung.email,
    nguoi_dung.mat_khau,
    nguoi_dung.ngay_sinh,
    nguoi_dung.dia_chi,
    nguoi_dung.so_dien_thoai,
    nguoi_dung.ma_vai_tro,
    nguoi_dung.ngay_het_han,
    nguoi_dung.ma_trang_thai,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      return callback(err);
    }
    callback({ ma_nguoi_dung: res.insertId, ...nguoi_dung });
  });
};

Nguoi_dung.update = (nguoi_dung, ma_nguoi_dung, callback) => {
  // Lấy thông tin người dùng hiện tại để điền các trường còn thiếu
  const getSql = "CALL GetNguoiDungById(?)";
  db.query(getSql, [ma_nguoi_dung], (err, result) => {
    if (err) {
      return callback(err);
    }
    const current = result[0][0];
    if (!current) {
      return callback(new Error("Người dùng không tồn tại"));
    }

    const sqlString =
      "CALL UpdateNguoiDung(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    const params = [
      ma_nguoi_dung,
      nguoi_dung.ho_ten || current.ho_ten,
      nguoi_dung.email || current.email,
      nguoi_dung.mat_khau || current.mat_khau,
      nguoi_dung.ngay_sinh || current.ngay_sinh,
      nguoi_dung.dia_chi || current.dia_chi,
      nguoi_dung.so_dien_thoai || current.so_dien_thoai,
      nguoi_dung.ma_vai_tro || current.ma_vai_tro,
      nguoi_dung.ngay_dang_ky || current.ngay_dang_ky,
      nguoi_dung.ngay_het_han || current.ngay_het_han,
      nguoi_dung.ma_trang_thai || current.ma_trang_thai,
      nguoi_dung.user_role || 0,
    ];
    db.query(sqlString, params, (err, res) => {
      if (err) {
        return callback(err);
      }
      callback(
        "Cập nhật người dùng ma_nguoi_dung = " + ma_nguoi_dung + " thành công"
      );
    });
  });
};

Nguoi_dung.delete = (ma_nguoi_dung, callback) => {
  const sqlString = "CALL DeleteNguoiDung(?)";
  db.query(sqlString, [ma_nguoi_dung], (err, res) => {
    if (err) {
      return callback(err);
    }
    callback("Xóa người dùng ma_nguoi_dung = " + ma_nguoi_dung + " thành công");
  });
};

Nguoi_dung.search = (keyword, callback) => {
  const sqlString = "CALL SearchNguoiDung(?)";
  db.query(sqlString, [keyword], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nguoi_dung.advancedSearch = (params, callback) => {
  const sqlString = "CALL AdvancedSearchNguoiDung(?, ?, ?)";
  const { ho_ten, dia_chi, so_dien_thoai } = params;
  db.query(
    sqlString,
    [ho_ten || null, dia_chi || null, so_dien_thoai || null],
    (err, result) => {
      if (err) {
        return callback(err);
      }
      callback(result[0]);
    }
  );
};

Nguoi_dung.authenticate = (email, password, callback) => {
  const sqlString = "CALL AuthenticateNguoiDung(?, ?)";
  db.query(sqlString, [email, password], (err, result) => {
    if (err) {
      return callback(null);
    }
    if (result[0].length > 0) {
      callback(result[0][0]);
    } else {
      callback(null);
    }
  });
};

module.exports = Nguoi_dung;
