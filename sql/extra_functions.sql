DELIMITER $$

-- Theo dõi tình trạng mượn - trả sách của người dùng
CREATE PROCEDURE GetMuonTraByUserId(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT pm.ma_phieu_muon, pm.ngay_muon, pm.trang_thai, s.tieu_de, s.tac_gia, ctm.so_luong
    FROM phieu_muon pm
    JOIN chi_tiet_muon ctm ON pm.ma_phieu_muon = ctm.ma_phieu_muon
    JOIN sach s ON ctm.ma_sach = s.ma_sach
    WHERE pm.ma_nguoi_dung = p_ma_nguoi_dung;
END$$

-- Gửi yêu cầu / tin nhắn đến thủ thư
CREATE PROCEDURE InsertTinNhan(
    IN p_noi_dung TEXT,
    IN p_ma_nguoi_gui INT,
    IN p_ma_nguoi_nhan INT,
    IN p_thoi_gian DATETIME
)
BEGIN
    INSERT INTO tin_nhan (noi_dung, ma_nguoi_gui, ma_nguoi_nhan, thoi_gian)
    VALUES (p_noi_dung, p_ma_nguoi_gui, p_ma_nguoi_nhan, p_thoi_gian);
END$$

-- Đánh giá và bình luận sách
CREATE PROCEDURE InsertDanhGia(
    IN p_ma_sach INT,
    IN p_ma_doc_gia INT,
    IN p_diem INT,
    IN p_binh_luan TEXT,
    IN p_ngay_danh_gia DATE
)
BEGIN
    INSERT INTO danh_gia (ma_sach, ma_doc_gia, diem, binh_luan, ngay_danh_gia)
    VALUES (p_ma_sach, p_ma_doc_gia, p_diem, p_binh_luan, p_ngay_danh_gia);
END$$

-- Tìm kiếm sách nâng cao theo nhiều tiêu chí
CREATE PROCEDURE SearchSachAdvanced(
    IN p_tieu_de VARCHAR(255),
    IN p_tac_gia VARCHAR(255),
    IN p_the_loai INT,
    IN p_ngon_ngu INT,
    IN p_nam_xuat_ban INT
)
BEGIN
    SELECT * FROM sach
    WHERE (tieu_de LIKE CONCAT('%', p_tieu_de, '%') OR p_tieu_de IS NULL)
      AND (tac_gia LIKE CONCAT('%', p_tac_gia, '%') OR p_tac_gia IS NULL)
      AND (ma_the_loai = p_the_loai OR p_the_loai IS NULL)
      AND (ma_ngon_ngu = p_ngon_ngu OR p_ngon_ngu IS NULL)
      AND (YEAR(ngay_xuat_ban) = p_nam_xuat_ban OR p_nam_xuat_ban IS NULL);
END$$

-- Lọc kết quả tìm kiếm theo thể loại, ngôn ngữ, năm
CREATE PROCEDURE FilterSach(
    IN p_the_loai INT,
    IN p_ngon_ngu INT,
    IN p_nam_xuat_ban INT
)
BEGIN
    SELECT * FROM sach
    WHERE (ma_the_loai = p_the_loai OR p_the_loai IS NULL)
      AND (ma_ngon_ngu = p_ngon_ngu OR p_ngon_ngu IS NULL)
      AND (YEAR(ngay_xuat_ban) = p_nam_xuat_ban OR p_nam_xuat_ban IS NULL);
END$$

-- Gợi ý sách liên quan hoặc sách được mượn nhiều
CREATE PROCEDURE SuggestSach()
BEGIN
    SELECT s.*, COUNT(ctm.ma_sach) AS so_luot_muon
    FROM sach s
    LEFT JOIN chi_tiet_muon ctm ON s.ma_sach = ctm.ma_sach
    GROUP BY s.ma_sach
    ORDER BY so_luot_muon DESC
    LIMIT 10;
END$$

DELIMITER ;
