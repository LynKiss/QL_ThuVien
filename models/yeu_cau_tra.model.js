const db = require("../common/db");

const YeuCauTra = function (yeu_cau) {
  this.ma_yeu_cau = yeu_cau.ma_yeu_cau;
  this.ma_phieu_muon = yeu_cau.ma_phieu_muon;
  this.ma_doc_gia = yeu_cau.ma_doc_gia;
  this.ngay_gui = yeu_cau.ngay_gui;
  this.trang_thai = yeu_cau.trang_thai;
};

YeuCauTra.getAll = (callback) => {
  const sql = "SELECT * FROM yeu_cau_tra ORDER BY ngay_gui DESC";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

YeuCauTra.getById = (ma_yeu_cau, callback) => {
  const sql = "SELECT * FROM yeu_cau_tra WHERE ma_yeu_cau = ?";
  db.query(sql, [ma_yeu_cau], (err, result) => {
    if (err) return callback(err);
    callback(null, result[0] || null);
  });
};

YeuCauTra.getByPhieuMuon = (ma_phieu_muon, callback) => {
  const sql = "SELECT * FROM yeu_cau_tra WHERE ma_phieu_muon = ? ORDER BY ngay_gui DESC";
  db.query(sql, [ma_phieu_muon], (err, result) => {
    if (err) return callback(err);
    callback(null, result);
  });
};

YeuCauTra.insert = (yeu_cau, callback) => {
  const sql = "INSERT INTO yeu_cau_tra (ma_phieu_muon, ma_doc_gia, ngay_gui, trang_thai) VALUES (?, ?, NOW(), ?)";
  db.query(sql, [yeu_cau.ma_phieu_muon, yeu_cau.ma_doc_gia, yeu_cau.trang_thai || 'cho_xac_nhan'], (err, result) => {
    if (err) return callback(err);
    callback(null, { ma_yeu_cau: result.insertId, ...yeu_cau });
  });
};

YeuCauTra.update = (ma_yeu_cau, yeu_cau, callback) => {
  const sql = "UPDATE yeu_cau_tra SET ma_phieu_muon = ?, ma_doc_gia = ?, ngay_gui = ?, trang_thai = ? WHERE ma_yeu_cau = ?";
  db.query(sql, [yeu_cau.ma_phieu_muon, yeu_cau.ma_doc_gia, yeu_cau.ngay_gui, yeu_cau.trang_thai, ma_yeu_cau], (err, result) => {
    if (err) return callback(err);
    callback(null, result.affectedRows > 0 ? { ma_yeu_cau, ...yeu_cau } : null);
  });
};

YeuCauTra.updateTrangThai = (ma_yeu_cau, trang_thai, callback) => {
  const sql = "UPDATE yeu_cau_tra SET trang_thai = ? WHERE ma_yeu_cau = ?";
  db.query(sql, [trang_thai, ma_yeu_cau], (err, result) => {
    if (err) return callback(err);
    callback(null, result.affectedRows > 0);
  });
};

YeuCauTra.delete = (ma_yeu_cau, callback) => {
  const sql = "DELETE FROM yeu_cau_tra WHERE ma_yeu_cau = ?";
  db.query(sql, [ma_yeu_cau], (err, result) => {
    if (err) return callback(err);
    callback(null, result.affectedRows > 0);
  });
};

module.exports = YeuCauTra;
