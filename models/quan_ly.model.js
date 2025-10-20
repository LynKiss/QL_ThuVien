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

// Xếp hạng theo số lượt mượn sách
QuanLy.getRankingByBorrowCount = (callback) => {
  const sql = `
    SELECT
      pm.ma_nguoi_dung,
      nd.ho_ten as ten_nguoi_dung,
      COUNT(pm.ma_phieu_muon) as borrow_count
    FROM phieu_muon pm
    JOIN nguoi_dung nd ON pm.ma_nguoi_dung = nd.ma_nguoi_dung
    GROUP BY pm.ma_nguoi_dung, nd.ho_ten
    ORDER BY borrow_count DESC
  `;
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    // Thêm rank thủ công
    result.forEach((item, index) => {
      item.rank = index + 1;
    });
    callback(result);
  });
};

// Xếp hạng theo số sách yêu thích
QuanLy.getRankingByFavorites = (callback) => {
  const sql = `
    SELECT
      sy.ma_nguoi_dung,
      nd.ho_ten as ten_nguoi_dung,
      COUNT(sy.ma_sach) as favorite_count
    FROM sach_yeu_thich sy
    JOIN nguoi_dung nd ON sy.ma_nguoi_dung = nd.ma_nguoi_dung
    GROUP BY sy.ma_nguoi_dung, nd.ho_ten
    ORDER BY favorite_count DESC
  `;
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    // Thêm rank thủ công
    result.forEach((item, index) => {
      item.rank = index + 1;
    });
    callback(result);
  });
};

// Xếp hạng tổng hợp (mượn + yêu thích - phạt)
QuanLy.getOverallRanking = (callback) => {
  const sql = `
    SELECT
      nd.ma_nguoi_dung,
      nd.ho_ten as ten_nguoi_dung,
      COALESCE(borrow_stats.borrow_count, 0) as borrow_count,
      COALESCE(fav_stats.favorite_count, 0) as favorite_count,
      COALESCE(penalty_stats.total_penalty, 0) as total_penalty,
      (COALESCE(borrow_stats.borrow_count, 0) * 10 + COALESCE(fav_stats.favorite_count, 0) * 5 - COALESCE(penalty_stats.total_penalty, 0)) as total_score
    FROM nguoi_dung nd
    LEFT JOIN (
      SELECT ma_nguoi_dung, COUNT(*) as borrow_count
      FROM phieu_muon
      GROUP BY ma_nguoi_dung
    ) borrow_stats ON nd.ma_nguoi_dung = borrow_stats.ma_nguoi_dung
    LEFT JOIN (
      SELECT ma_nguoi_dung, COUNT(*) as favorite_count
      FROM sach_yeu_thich
      GROUP BY ma_nguoi_dung
    ) fav_stats ON nd.ma_nguoi_dung = fav_stats.ma_nguoi_dung
    LEFT JOIN (
      SELECT ma_nguoi_dung, SUM(so_tien) as total_penalty
      FROM phat
      WHERE trang_thai = 'Chưa thanh toán'
      GROUP BY ma_nguoi_dung
    ) penalty_stats ON nd.ma_nguoi_dung = penalty_stats.ma_nguoi_dung
    ORDER BY total_score DESC
  `;
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    // Thêm rank thủ công
    result.forEach((item, index) => {
      item.rank = index + 1;
    });
    callback(result);
  });
};

// Cập nhật điểm số trong user_rank
QuanLy.updateUserScores = (callback) => {
  const sql = `
    INSERT INTO user_rank (ma_nguoi_dung, rank_name, score, updated_at)
    SELECT
      nd.ma_nguoi_dung,
      CASE
        WHEN total_score >= 100 THEN 'Diamond'
        WHEN total_score >= 50 THEN 'Gold'
        WHEN total_score >= 20 THEN 'Silver'
        ELSE 'Bronze'
      END as rank_name,
      total_score,
      NOW()
    FROM (
      SELECT
        nd.ma_nguoi_dung,
        (COALESCE(borrow_stats.borrow_count, 0) * 10 + COALESCE(fav_stats.favorite_count, 0) * 5 - COALESCE(penalty_stats.total_penalty, 0)) as total_score
      FROM nguoi_dung nd
      LEFT JOIN (
        SELECT ma_nguoi_dung, COUNT(*) as borrow_count
        FROM phieu_muon
        GROUP BY ma_nguoi_dung
      ) borrow_stats ON nd.ma_nguoi_dung = borrow_stats.ma_nguoi_dung
      LEFT JOIN (
        SELECT ma_nguoi_dung, COUNT(*) as favorite_count
        FROM sach_yeu_thich
        GROUP BY ma_nguoi_dung
      ) fav_stats ON nd.ma_nguoi_dung = fav_stats.ma_nguoi_dung
      LEFT JOIN (
        SELECT ma_nguoi_dung, SUM(so_tien) as total_penalty
        FROM phat
        WHERE trang_thai = 'Chưa thanh toán'
        GROUP BY ma_nguoi_dung
      ) penalty_stats ON nd.ma_nguoi_dung = penalty_stats.ma_nguoi_dung
    ) nd
    ON DUPLICATE KEY UPDATE
      rank_name = VALUES(rank_name),
      score = VALUES(score),
      updated_at = VALUES(updated_at)
  `;
  db.query(sql, (err, result) => {
    if (err) return callback(err);
    callback(result);
  });
};

module.exports = QuanLy;
