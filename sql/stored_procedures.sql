DELIMITER $$

CREATE PROCEDURE UpdateTrangThaiNguoiDung(
    IN p_ma_nguoi_dung INT,
    IN p_trang_thai_moi VARCHAR(50)
)
BEGIN
    UPDATE nguoi_dung
    SET trang_thai = p_trang_thai_moi
    WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END$$

CREATE PROCEDURE InsertDatMuon(
    IN p_ma_nguoi_dung INT,
    IN p_ngay_dat DATETIME,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    INSERT INTO dat_muon (ma_nguoi_dung, ngay_dat, trang_thai)
    VALUES (p_ma_nguoi_dung, p_ngay_dat, p_trang_thai);
    SELECT LAST_INSERT_ID() AS ma_dat_muon;
END$$

CREATE PROCEDURE InsertChiTietDatMuon(
    IN p_ma_dat_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    INSERT INTO chi_tiet_dat_muon (ma_dat_muon, ma_sach, so_luong)
    VALUES (p_ma_dat_muon, p_ma_sach, p_so_luong);
END$$

CREATE PROCEDURE GetSachQuaHan()
BEGIN
    SELECT s.ma_sach, s.ten_sach, pm.ngay_du_kien_tra, DATEDIFF(CURDATE(), pm.ngay_du_kien_tra) AS so_ngay_qua_han
    FROM sach s
    JOIN chi_tiet_muon ctm ON s.ma_sach = ctm.ma_sach
    JOIN phieu_muon pm ON ctm.ma_phieu_muon = pm.ma_phieu_muon
    WHERE pm.ngay_du_kien_tra < CURDATE() AND pm.trang_thai = 'Đang mượn';
END$$

CREATE PROCEDURE GetSachMuonNhieuNhat()
BEGIN
    SELECT s.ma_sach, s.ten_sach, SUM(ctm.so_luong) AS tong_so_luong_muon
    FROM sach s
    JOIN chi_tiet_muon ctm ON s.ma_sach = ctm.ma_sach
    GROUP BY s.ma_sach, s.ten_sach
    ORDER BY tong_so_luong_muon DESC
    LIMIT 10;
END$$

DELIMITER ;
