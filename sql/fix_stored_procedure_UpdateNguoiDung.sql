DELIMITER $$

DROP PROCEDURE IF EXISTS UpdateNguoiDung$$

CREATE PROCEDURE UpdateNguoiDung(
    IN p_ma_nguoi_dung INT,
    IN p_ho_ten VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_mat_khau VARCHAR(255),
    IN p_ngay_sinh DATE,
    IN p_dia_chi VARCHAR(255),
    IN p_so_dien_thoai VARCHAR(20),
    IN p_ma_vai_tro INT,
    IN p_ngay_dang_ky DATE,
    IN p_ngay_het_han DATE,
    IN p_ma_trang_thai INT,
    IN p_user_role INT
)
BEGIN
    IF p_user_role <> 1 THEN
        -- Kiểm tra số điện thoại hợp lệ: bắt đầu bằng 0 và chỉ chứa chữ số
        IF p_so_dien_thoai IS NOT NULL AND p_so_dien_thoai NOT REGEXP '^0[0-9]+$' THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Số điện thoại không hợp lệ';
        END IF;

        -- Nếu không phải admin, giữ nguyên ma_vai_tro và ma_trang_thai hiện tại
        UPDATE nguoi_dung
        SET ho_ten = p_ho_ten,
            email = p_email,
            mat_khau = p_mat_khau,
            ngay_sinh = p_ngay_sinh,
            dia_chi = p_dia_chi,
            so_dien_thoai = p_so_dien_thoai,
            ma_vai_tro = ma_vai_tro,
            ngay_dang_ky = p_ngay_dang_ky,
            ngay_het_han = p_ngay_het_han,
            ma_trang_thai = ma_trang_thai
        WHERE ma_nguoi_dung = p_ma_nguoi_dung;
    ELSE
        -- Kiểm tra số điện thoại hợp lệ: bắt đầu bằng 0 và chỉ chứa chữ số
        IF p_so_dien_thoai IS NOT NULL AND p_so_dien_thoai NOT REGEXP '^0[0-9]+$' THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Số điện thoại không hợp lệ';
        END IF;

        UPDATE nguoi_dung
        SET ho_ten = p_ho_ten,
            email = p_email,
            mat_khau = p_mat_khau,
            ngay_sinh = p_ngay_sinh,
            dia_chi = p_dia_chi,
            so_dien_thoai = p_so_dien_thoai,
            ma_vai_tro = p_ma_vai_tro,
            ngay_dang_ky = p_ngay_dang_ky,
            ngay_het_han = p_ngay_het_han,
            ma_trang_thai = p_ma_trang_thai
        WHERE ma_nguoi_dung = p_ma_nguoi_dung;
    END IF;
END$$

DELIMITER ;
