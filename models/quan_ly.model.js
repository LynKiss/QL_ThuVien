const db = require("../common/db");

const QuanLy = {};

// Example: Xác thực tài khoản độc giả
QuanLy.xacThucTaiKhoan = (ma_nguoi_dung, trang_thai_moi, callback) => {
  const sql = "CALL UpdateTrangThaiNguoiDung(?, ?)";
  db.query(sql, [ma_nguoi_dung, trang_thai_moi], (err, result) => {
    if (err) return callback(err);
    callback(result);
  });
};

// Đặt mượn sách (thêm vào giỏ hàng, cần xác nhận)
QuanLy.datMuonSach = (ma_nguoi_dung, danh_sach_sach, callback) => {
  // danh_sach_sach là mảng các mã sách và số lượng
  // Giả sử có stored procedure InsertDatMuon và InsertChiTietDatMuon
  const sqlDatMuon = "CALL InsertDatMuon(?, NOW(), 'Chờ xác nhận')";
  db.query(sqlDatMuon, [ma_nguoi_dung], (err, result) => {
    if (err) return callback(err);
    const ma_dat_muon = result[0][0].ma_dat_muon || result.insertId;
    // Thêm chi tiết đặt mượn
    const sqlChiTiet = "CALL InsertChiTietDatMuon(?, ?, ?)";
    let count = 0;
    for (const sach of danh_sach_sach) {
      db.query(
        sqlChiTiet,
        [ma_dat_muon, sach.ma_sach, sach.so_luong],
        (err2) => {
          if (err2) return callback(err2);
          count++;
          if (count === danh_sach_sach.length) {
            callback({ ma_dat_muon });
          }
        }
      );
    }
  });
};

// Thông báo mượn quá hạn
QuanLy.getThongBaoMuonQuaHan = (callback) => {
  const sql = "CALL GetSachQuaHan()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Thống kê sách mượn nhiều nhất
QuanLy.getSachMuonNhieuNhat = (callback) => {
  const sql = "CALL GetSachMuonNhieuNhat()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Thống kê số lượt mượn/trả sách
QuanLy.getMuonTraStats = (callback) => {
  const sql = "CALL GetMuonTraStats()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Thống kê số sách theo thể loại
QuanLy.getSachCountByTheLoai = (callback) => {
  const sql = "CALL GetSachCountByTheLoai()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Thống kê người mượn nhiều nhất
QuanLy.getTopNguoiMuon = (callback) => {
  const sql = "CALL GetTopNguoiMuon()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Báo cáo tồn kho sách
QuanLy.getTonKhoSach = (callback) => {
  const sql = "CALL GetTonKhoSach()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Thống kê sách theo thể loại, năm xuất bản
QuanLy.getSachStatsByTheLoaiNam = (callback) => {
  const sql = "CALL GetSachStatsByTheLoaiNam()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Thống kê người mượn tích cực
QuanLy.getNguoiMuonTichCuc = (callback) => {
  const sql = "CALL GetNguoiMuonTichCuc()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Báo cáo tồn kho sách (cập nhật chi tiết hơn)
QuanLy.baoCaoTonKhoSach = (callback) => {
  const sql = "CALL BaoCaoTonKhoSach()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

// Thống kê sách theo nhà xuất bản
QuanLy.thongKeSachTheoNXB = (callback) => {
  const sql = "CALL ThongKeSachTheoNXB()";
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result[0]);
  });
};

module.exports = QuanLy;
