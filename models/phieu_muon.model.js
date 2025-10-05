const db = require("../common/db");

const Phieu_muon = (phieu_muon) => {
  this.ma_phieu_muon = phieu_muon.ma_phieu_muon;
  this.ma_nguoi_dung = phieu_muon.ma_nguoi_dung;
  this.ma_nhan_vien = phieu_muon.ma_nhan_vien;
  this.ngay_muon = phieu_muon.ngay_muon;
  this.ngay_hen_tra = phieu_muon.ngay_hen_tra;
  this.trang_thai = phieu_muon.trang_thai;
  this.ghi_chu = phieu_muon.ghi_chu;
};

// 📌 Lấy 1 phiếu mượn theo ID
Phieu_muon.getById = async (ma_phieu_muon) => {
  const sqlString = "CALL GetPhieuMuonById(?)";
  const [result] = await db.query(sqlString, [ma_phieu_muon]);
  return result[0];
};

// 📌 Lấy tất cả phiếu mượn
Phieu_muon.getAll = async () => {
  const sqlString = "CALL GetAllPhieuMuon()";
  const [result] = await db.query(sqlString);
  return result[0];
};

// 📌 Thêm phiếu mượn mới
Phieu_muon.insert = async (phieu_muon) => {
  const sqlString = "CALL InsertPhieuMuon(?, ?, ?, ?, ?, ?)";
  const params = [
    phieu_muon.ma_nguoi_dung,
    phieu_muon.ma_nhan_vien,
    phieu_muon.ngay_muon,
    phieu_muon.ngay_hen_tra,
    phieu_muon.trang_thai,
    phieu_muon.ghi_chu || null,
  ];
  const [res] = await db.query(sqlString, params);
  return { ma_phieu_muon: res.insertId, ...phieu_muon };
};

// 📌 Cập nhật phiếu mượn
Phieu_muon.update = (phieu_muon, ma_phieu_muon, callBack) => {
  const sqlString = "CALL UpdatePhieuMuon(?, ?, ?, ?, ?, ?, ?)";
  const params = [
    ma_phieu_muon,
    phieu_muon.ma_nguoi_dung,
    phieu_muon.ma_nhan_vien,
    phieu_muon.ngay_muon,
    phieu_muon.ngay_hen_tra,
    phieu_muon.trang_thai,
    phieu_muon.ghi_chu || null,
  ];
  db.query(sqlString, params, (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack(
      "Cập nhật phiếu mượn ma_phieu_muon = " + ma_phieu_muon + " thành công"
    );
  });
};

// 📌 Xóa phiếu mượn
Phieu_muon.delete = (ma_phieu_muon, callBack) => {
  const sqlString = "CALL DeletePhieuMuon(?)";
  db.query(sqlString, [ma_phieu_muon], (err, res) => {
    if (err) {
      callBack(err);
      return;
    }
    callBack("Xóa phiếu mượn ma_phieu_muon = " + ma_phieu_muon + " thành công");
  });
};

Phieu_muon.getHistoryByUser = (ma_nguoi_dung, callback) => {
  const sqlString = `
    SELECT DISTINCT ma_phieu_muon, ngay_muon, han_tra, trang_thai_phieu,
           tien_phat, ly_do_phat, trang_thai_phat
    FROM vw_lich_su_muon
    WHERE ma_nguoi_dung = ?
    ORDER BY ngay_muon DESC
  `;
  db.query(sqlString, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

// 📌 Lấy chi tiết sách trong 1 phiếu mượn (kèm phạt)
Phieu_muon.getDetailByPhieu = (ma_nguoi_dung, ma_phieu_muon, callback) => {
  const sqlString = `
    SELECT ten_sach, so_luong, han_tra, ngay_tra_thuc_te, trang_thai_sach,
           tien_phat, ly_do_phat, trang_thai_phat
    FROM vw_lich_su_muon
    WHERE ma_nguoi_dung = ? AND ma_phieu_muon = ?
  `;
  db.query(sqlString, [ma_nguoi_dung, ma_phieu_muon], (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

module.exports = Phieu_muon;
