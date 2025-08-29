DELIMITER $$

DROP PROCEDURE IF EXISTS InsertNguoiDung $$
CREATE PROCEDURE InsertNguoiDung(
    IN p_ho_ten VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_mat_khau VARCHAR(255),
    IN p_ngay_sinh DATE,
    IN p_dia_chi VARCHAR(255),
    IN p_so_dien_thoai VARCHAR(20),
    IN p_ma_vai_tro INT,
    IN p_ngay_het_han DATE,
    IN p_ma_trang_thai INT
)
BEGIN
    -- Kiểm tra số điện thoại hợp lệ: bắt đầu bằng 0 và chỉ chứa chữ số
    IF p_so_dien_thoai IS NOT NULL AND p_so_dien_thoai NOT REGEXP '^0[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Số điện thoại không hợp lệ';
    END IF;

    IF p_ma_vai_tro IS NULL THEN
        SET p_ma_vai_tro = 1;
    END IF;

    IF p_ma_trang_thai IS NULL THEN
        SET p_ma_trang_thai = 2;
    END IF;

    IF p_ngay_het_han IS NULL THEN
        SET p_ngay_het_han = DATE_ADD(CURDATE(), INTERVAL 5 YEAR);
    END IF;

    INSERT INTO nguoi_dung (
        ho_ten, email, mat_khau, ngay_sinh, dia_chi, so_dien_thoai, ma_vai_tro, ngay_dang_ky, ngay_het_han, ma_trang_thai
    ) VALUES (
        p_ho_ten, p_email, p_mat_khau, p_ngay_sinh, p_dia_chi, p_so_dien_thoai, p_ma_vai_tro, CURDATE(), p_ngay_het_han, p_ma_trang_thai
    );
END$$

DELIMITER ;
