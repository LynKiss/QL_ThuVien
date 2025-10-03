// models/nguoi_dung.model.js
const db = require("../common/db");

const Nguoi_dung = function (nguoi_dung) {
  this.ma_nguoi_dung = nguoi_dung.ma_nguoi_dung;
  this.ho_ten = nguoi_dung.ho_ten;
  this.email = nguoi_dung.email;
  this.mat_khau = nguoi_dung.mat_khau;
  this.ngay_sinh = nguoi_dung.ngay_sinh;
  this.gioi_tinh = nguoi_dung.gioi_tinh;
  this.dia_chi = nguoi_dung.dia_chi;
  this.so_dien_thoai = nguoi_dung.so_dien_thoai;
  this.ma_vai_tro = nguoi_dung.ma_vai_tro;
  this.ngay_dang_ky = nguoi_dung.ngay_dang_ky;
  this.han_the = nguoi_dung.han_the;
  this.ma_trang_thai = nguoi_dung.ma_trang_thai;
  this.anh_dai_dien = nguoi_dung.anh_dai_dien;
  this.avatar = nguoi_dung.avatar;
  this.avatar_public_id = nguoi_dung.avatar_public_id;
};

Nguoi_dung.getById = (ma_nguoi_dung, callback) => {
  const sqlString = "CALL GetNguoiDungById(?)";
  db.query(sqlString, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err);
    const row = result && result[0] && result[0][0] ? result[0][0] : null;
    callback(null, row);
  });
};

Nguoi_dung.getAll = (callback) => {
  const sqlString = "CALL GetAllNguoiDung()";
  db.query(sqlString, (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

Nguoi_dung.insert = (nguoi_dung, callback) => {
  const sqlString = "CALL InsertNguoiDung(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  const params = [
    nguoi_dung.ho_ten || null,
    nguoi_dung.email || null,
    nguoi_dung.mat_khau || null,
    // ngay_sinh DATE
    nguoi_dung.ngay_sinh || null,
    nguoi_dung.gioi_tinh || null,
    nguoi_dung.dia_chi || null,
    nguoi_dung.so_dien_thoai || null,
    nguoi_dung.ma_vai_tro || null,
    nguoi_dung.han_the || null,
    nguoi_dung.ma_trang_thai || null,
    nguoi_dung.anh_dai_dien || null,
    nguoi_dung.avatar || null,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    // Insert stored procedure may not return insertId reliably; return user data instead
    callback(null, {
      ma_nguoi_dung: res && res.insertId ? res.insertId : null,
      ...nguoi_dung,
    });
  });
};

// UPDATE: ensure 15 params, format dates
Nguoi_dung.update = (nguoi_dung, ma_nguoi_dung, callback) => {
  const getSql = "CALL GetNguoiDungById(?)";
  db.query(getSql, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err);
    const current = result && result[0] && result[0][0] ? result[0][0] : null;
    if (!current) return callback(new Error("Người dùng không tồn tại"));

    const toDate = (d) => {
      if (d == null) return null;
      const dt = d instanceof Date ? d : new Date(d);
      if (isNaN(dt)) return null;
      return dt.toISOString().slice(0, 19).replace("T", " ");
    };
    const toDateOnly = (d) => {
      const s = toDate(d);
      return s ? s.slice(0, 10) : null;
    };

    const params = [
      ma_nguoi_dung, //1
      nguoi_dung.ho_ten ?? current.ho_ten, //2
      nguoi_dung.email ?? current.email, //3
      nguoi_dung.mat_khau ?? current.mat_khau, //4
      nguoi_dung.ngay_sinh ?? current.ngay_sinh
        ? toDateOnly(nguoi_dung.ngay_sinh ?? current.ngay_sinh)
        : null, //5
      nguoi_dung.gioi_tinh ?? current.gioi_tinh, //6
      nguoi_dung.dia_chi ?? current.dia_chi, //7
      nguoi_dung.so_dien_thoai ?? current.so_dien_thoai, //8
      nguoi_dung.ngay_dang_ky ?? current.ngay_dang_ky
        ? toDate(nguoi_dung.ngay_dang_ky ?? current.ngay_dang_ky)
        : null, //9
      nguoi_dung.han_the ?? current.han_the
        ? toDateOnly(nguoi_dung.han_the ?? current.han_the)
        : null, //10
      nguoi_dung.ma_vai_tro ?? current.ma_vai_tro, //11
      nguoi_dung.ma_trang_thai ?? current.ma_trang_thai, //12
      typeof nguoi_dung.user_role !== "undefined" ? nguoi_dung.user_role : 1, //13 default=1
      typeof nguoi_dung.avatar !== "undefined"
        ? nguoi_dung.avatar
        : current.avatar ?? null, //14
      typeof nguoi_dung.avatar_public_id !== "undefined"
        ? nguoi_dung.avatar_public_id
        : current.avatar_public_id ?? null, //15
    ];

    while (params.length < 15) params.push(null);

    const sqlString =
      "CALL UpdateNguoiDung(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    db.query(sqlString, params, (err2, res2) => {
      if (err2) return callback(err2);
      const updated = res2 && res2[0] && res2[0][0] ? res2[0][0] : null;
      callback(null, updated || { message: "Cập nhật thành công" });
    });
  });
};

Nguoi_dung.delete = (ma_nguoi_dung, callback) => {
  const sqlString = "CALL DeleteNguoiDung(?)";
  db.query(sqlString, [ma_nguoi_dung], (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Xóa thành công", ma_nguoi_dung });
  });
};

Nguoi_dung.search = (keyword, callback) => {
  const sqlString = "CALL SearchNguoiDung(?)";
  db.query(sqlString, [keyword], (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

Nguoi_dung.advancedSearch = (params, callback) => {
  const sqlString = "CALL AdvancedSearchNguoiDung(?, ?, ?)";
  const { ho_ten, dia_chi, so_dien_thoai } = params;
  db.query(
    sqlString,
    [ho_ten || null, dia_chi || null, so_dien_thoai || null],
    (err, result) => {
      if (err) return callback(err);
      callback(null, result[0]);
    }
  );
};

Nguoi_dung.authenticate = (email, password, callback) => {
  const sqlString = "CALL AuthenticateNguoiDung(?, ?)";
  db.query(sqlString, [email, password], (err, result) => {
    if (err) return callback(err);
    if (result && result[0] && result[0].length > 0) {
      callback(null, result[0][0]);
    } else {
      callback(null, null);
    }
  });
};

Nguoi_dung.getProfile = (ma_nguoi_dung, callback) => {
  const sqlString = "CALL sp_get_profile(?)";
  db.query(sqlString, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err);
    if (result && result[0] && result[0].length > 0) {
      callback(null, result[0][0]);
    } else {
      callback(null, null);
    }
  });
};
Nguoi_dung.getHome = (ma_nguoi_dung, callback) => {
  const sqlString = "CALL sp_get_home(?)";
  db.query(sqlString, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err);

    // result[0] = profile
    // result[1] = featuredBooks
    // result[2] = importantNotices
    // result[3] = recommendations

    const data = {
      user: result && result[0] && result[0][0] ? result[0][0] : null,
      featuredBooks: result && result[1] ? result[1] : [],
      importantNotices: result && result[2] ? result[2] : [],
      recommendations: result && result[3] ? result[3] : [],
    };

    callback(null, data);
  });
};

module.exports = Nguoi_dung;
