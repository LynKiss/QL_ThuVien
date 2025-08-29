const db = require("../common/db");
const Nhat_ky_he_thong = (nhat_ky_he_thong) => {
  this.ma_nhat_ky = nhat_ky_he_thong.ma_nhat_ky;
  this.ma_nguoi_dung = nhat_ky_he_thong.ma_nguoi_dung;
  this.thao_tac = nhat_ky_he_thong.thao_tac;
  this.thoi_gian = nhat_ky_he_thong.thoi_gian;
};

Nhat_ky_he_thong.getById = (ma_nhat_ky, callback) => {
  const sqlString = "CALL GetNhatKyHeThongById(?)";
  db.query(sqlString, [ma_nhat_ky], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nhat_ky_he_thong.getAll = (callback) => {
  const sqlString = "CALL GetAllNhatKyHeThong()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nhat_ky_he_thong.insert = (nhat_ky_he_thong, callBack) => {
  const sqlString = "CALL InsertNhatKyHeThong(?, ?, ?)";
  const params = [
    nhat_ky_he_thong.ma_nguoi_dung,
    nhat_ky_he_thong.thao_tac,
    nhat_ky_he_thong.thoi_gian,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_nhat_ky: res.insertId, ...nhat_ky_he_thong });
  });
};

Nhat_ky_he_thong.update = (nhat_ky_he_thong, ma_nhat_ky, callBack) => {
  const sqlString = "CALL UpdateNhatKyHeThong(?, ?, ?, ?)";
  const params = [
    ma_nhat_ky,
    nhat_ky_he_thong.ma_nguoi_dung,
    nhat_ky_he_thong.thao_tac,
    nhat_ky_he_thong.thoi_gian,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack(
      "Cập nhật nhat_ky_he_thong ma_nhat_ky = " + ma_nhat_ky + " thành công"
    );
  });
};

Nhat_ky_he_thong.delete = (ma_nhat_ky, callBack) => {
  const sqlString = "CALL DeleteNhatKyHeThong(?)";
  db.query(sqlString, [ma_nhat_ky], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa nhat_ky_he_thong ma_nhat_ky = " + ma_nhat_ky + " thành công");
  });
};

module.exports = Nhat_ky_he_thong;
