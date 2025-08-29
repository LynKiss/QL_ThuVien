const db = require("../common/db");
const Nha_xuat_ban = (nha_xuat_ban) => {
  this.ma_nxb = nha_xuat_ban.ma_nxb;
  this.ten_nxb = nha_xuat_ban.ten_nxb;
  this.dia_chi = nha_xuat_ban.dia_chi;
  this.so_dien_thoai = nha_xuat_ban.so_dien_thoai;
};

Nha_xuat_ban.getById = (ma_nxb, callback) => {
  const sqlString = "CALL GetNhaXuatBanById(?)";
  db.query(sqlString, [ma_nxb], (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nha_xuat_ban.getAll = (callback) => {
  const sqlString = "CALL GetAllNhaXuatBan()";
  db.query(sqlString, (err, result) => {
    if (err) {
      return callback(err);
    }
    callback(result[0]);
  });
};

Nha_xuat_ban.insert = (nha_xuat_ban, callBack) => {
  const sqlString = "CALL InsertNhaXuatBan(?, ?, ?)";
  const params = [
    nha_xuat_ban.ten_nxb,
    nha_xuat_ban.dia_chi,
    nha_xuat_ban.so_dien_thoai,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack({ ma_nxb: res.insertId, ...nha_xuat_ban });
  });
};

Nha_xuat_ban.update = (nha_xuat_ban, ma_nxb, callBack) => {
  const sqlString = "CALL UpdateNhaXuatBan(?, ?, ?, ?)";
  const params = [
    ma_nxb,
    nha_xuat_ban.ten_nxb,
    nha_xuat_ban.dia_chi,
    nha_xuat_ban.so_dien_thoai,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Cập nhật nha_xuat_ban ma_nxb = " + ma_nxb + " thành công");
  });
};

Nha_xuat_ban.delete = (ma_nxb, callBack) => {
  const sqlString = "CALL DeleteNhaXuatBan(?)";
  db.query(sqlString, [ma_nxb], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa nha_xuat_ban ma_nxb = " + ma_nxb + " thành công");
  });
};

module.exports = Nha_xuat_ban;
