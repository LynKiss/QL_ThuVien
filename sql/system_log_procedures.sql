DELIMITER $$

-- Lấy tất cả nhật ký hệ thống
CREATE PROCEDURE GetAllNhatKyHeThong()
BEGIN
    SELECT * FROM nhat_ky_he_thong ORDER BY thoi_gian DESC;
END$$

-- Lấy nhật ký theo khoảng thời gian
CREATE PROCEDURE GetNhatKyHeThongByDateRange(
    IN p_start_date DATETIME,
    IN p_end_date DATETIME
)
BEGIN
    SELECT * FROM nhat_ky_he_thong
    WHERE thoi_gian BETWEEN p_start_date AND p_end_date
    ORDER BY thoi_gian DESC;
END$$

-- Thêm nhật ký hệ thống
CREATE PROCEDURE InsertNhatKyHeThong(
    IN p_noi_dung TEXT,
    IN p_thoi_gian DATETIME
)
BEGIN
    INSERT INTO nhat_ky_he_thong (noi_dung, thoi_gian)
    VALUES (p_noi_dung, p_thoi_gian);
END$$

DELIMITER ;
