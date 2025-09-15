const db = require("../common/db");

const SachYeuThich = function (fav) {
  this.ma_nguoi_dung = fav.ma_nguoi_dung;
  this.ma_sach = fav.ma_sach;
  this.ngay_them = fav.ngay_them;
};

// Lấy tất cả sách yêu thích của 1 user
SachYeuThich.getByUser = (ma_nguoi_dung, callback) => {
  const sql = "CALL GetSachYeuThichByUser(?)";
  db.query(sql, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err, null);
    callback(null, result[0]);
  });
};

// Thêm sách vào danh sách yêu thích
SachYeuThich.insert = (fav, callback) => {
  const sql = "CALL AddSachYeuThich(?, ?)";
  db.query(sql, [fav.ma_nguoi_dung, fav.ma_sach], (err, res) => {
    if (err) return callback(err, null);
    callback(null, { ...fav });
  });
};

// Xóa sách khỏi danh sách yêu thích
SachYeuThich.delete = (ma_nguoi_dung, ma_sach, callback) => {
  const sql = "CALL RemoveSachYeuThich(?, ?)";
  db.query(sql, [ma_nguoi_dung, ma_sach], (err, res) => {
    if (err) return callback(err, null);
    callback(null, "Xóa thành công sách " + ma_sach + " khỏi yêu thích");
  });
};

module.exports = SachYeuThich;
