const db = require("../common/db");

const Sach = function (sach) {
  this.ma_sach = sach.ma_sach;
  this.tieu_de = sach.tieu_de;
  this.tac_gia = sach.tac_gia;
  this.ISBN = sach.ISBN;
  this.so_luong = sach.so_luong;
  this.so_trang = sach.so_trang;
  this.mo_ta = sach.mo_ta;
  this.hinh_bia = sach.hinh_bia;
  this.hinh_bia_public_id = sach.hinh_bia_public_id;
  this.ma_nxb = sach.ma_nxb;
  this.ma_danh_muc = sach.ma_danh_muc;
  this.ma_the_loai = sach.ma_the_loai;
  this.ma_ngon_ngu = sach.ma_ngon_ngu;
  this.ma_khu_vuc = sach.ma_khu_vuc;
  this.ma_ncc = sach.ma_ncc;
};

Sach.getById = (ma_sach, callback) => {
  const sqlString = "CALL GetSachById(?)";

  db.query(sqlString, [ma_sach], (err, resultSets) => {
    if (err) return callback(err);

    if (!resultSets || !resultSets[0] || resultSets[0].length === 0) {
      return callback(null, null);
    }

    // ===== Mapping dữ liệu từ các result set =====
    const thongTinChinh = resultSets[0][0]; // Thông tin chính
    const thongTinPhu = resultSets[1]?.[0] || null; // Thông tin phụ
    const fileDinhKem = resultSets[2] || []; // File đính kèm
    const banSao = resultSets[3] || []; // Bản sao vật lý
    const lichSu = resultSets[4] || []; // Lịch sử mượn
    const danhGia = resultSets[5] || []; // Danh sách đánh giá
    const diemTB = resultSets[6]?.[0] || {}; // Điểm trung bình + tổng lượt

    // Gom tất cả lại thành 1 object trả về
    const data = {
      ...thongTinChinh,
      thong_tin_phu: thongTinPhu,
      file_dinh_kem: fileDinhKem,
      ban_sao: banSao,
      lich_su_muon: lichSu,
      danh_gia: danhGia,
      thong_ke_danh_gia: {
        diem_trung_binh: diemTB.diem_trung_binh || 0,
        tong_danh_gia: diemTB.tong_danh_gia || 0,
      },
    };

    callback(null, data);
  });
};

// ====================== LẤY TẤT CẢ ======================
Sach.getAll = (callback) => {
  const sqlString = "CALL GetAllSach()";
  db.query(sqlString, (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

// ====================== THÊM SÁCH ======================
Sach.insert = (sach, callback) => {
  const sqlString = "CALL InsertSach(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  const params = [
    sach.tieu_de || null,
    sach.tac_gia || null,
    sach.ISBN || null,
    sach.so_luong || null,
    sach.so_trang || null,
    sach.mo_ta || null,
    sach.hinh_bia || null,
    sach.hinh_bia_public_id || null,
    sach.ma_nxb || null,
    sach.ma_danh_muc || null,
    sach.ma_the_loai || null,
    sach.ma_ngon_ngu || null,
    sach.ma_khu_vuc || null,
    sach.ma_ncc || null,
  ];

  db.query(sqlString, params, (err, res) => {
    if (err) return callback(err);
    callback(null, {
      ma_sach: res && res.insertId ? res.insertId : null,
      ...sach,
    });
  });
};

// ====================== CẬP NHẬT SÁCH ======================
Sach.update = (sach, ma_sach, callback) => {
  const sqlGet = "CALL GetSachById(?)";
  db.query(sqlGet, [ma_sach], (err, result) => {
    if (err) return callback(err);
    const current = result && result[0] && result[0][0] ? result[0][0] : null;
    if (!current)
      return callback(new Error("Không tìm thấy sách cần cập nhật"));

    const sqlString =
      "CALL UpdateSach(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    const params = [
      ma_sach,
      sach.tieu_de ?? current.tieu_de,
      sach.tac_gia ?? current.tac_gia,
      sach.ISBN ?? current.ISBN,
      sach.so_luong ?? current.so_luong,
      sach.so_trang ?? current.so_trang,
      sach.mo_ta ?? current.mo_ta,
      sach.hinh_bia ?? current.hinh_bia,
      sach.hinh_bia_public_id ?? current.hinh_bia_public_id,
      sach.ma_nxb ?? current.ma_nxb,
      sach.ma_danh_muc ?? current.ma_danh_muc,
      sach.ma_the_loai ?? current.ma_the_loai,
      sach.ma_ngon_ngu ?? current.ma_ngon_ngu,
      sach.ma_khu_vuc ?? current.ma_khu_vuc,
      sach.ma_ncc ?? current.ma_ncc,
    ];

    db.query(sqlString, params, (err2) => {
      if (err2) return callback(err2);
      callback(null, { message: "Cập nhật sách thành công", ma_sach });
    });
  });
};

// ====================== XÓA SÁCH ======================
Sach.delete = (ma_sach, callback) => {
  const sqlString = "CALL DeleteSach(?)";
  db.query(sqlString, [ma_sach], (err, res) => {
    if (err) return callback(err);
    callback(null, { message: "Xóa sách thành công", ma_sach });
  });
};

// ====================== TÌM KIẾM ======================
Sach.search = (keyword, callback) => {
  const sqlString = "CALL SearchSach(?)";
  db.query(sqlString, [keyword], (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

// ====================== TÌM NÂNG CAO ======================
Sach.advancedSearch = (params, callback) => {
  const sqlString = "CALL AdvancedSearchSach(?, ?, ?)";
  const { tieu_de, tac_gia, ISBN } = params;
  db.query(
    sqlString,
    [tieu_de || null, tac_gia || null, ISBN || null],
    (err, result) => {
      if (err) return callback(err);
      callback(null, result[0]);
    }
  );
};

// ====================== TOP MƯỢN NHIỀU ======================
Sach.getMostBorrowed = (limit, callback) => {
  const sqlString = "CALL GetMostBorrowedBooks(?)";
  db.query(sqlString, [limit], (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

// ====================== LẤY FULL THÔNG TIN ======================
Sach.getAllFullInfo = (callback) => {
  const sqlString = "CALL GetAllSachFullInfo()";
  db.query(sqlString, (err, result) => {
    if (err) return callback(err);
    callback(null, result[0]);
  });
};

module.exports = Sach;
