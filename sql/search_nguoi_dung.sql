DELIMITER $$

DROP PROCEDURE IF EXISTS SearchNguoiDung $$
CREATE PROCEDURE SearchNguoiDung(
    IN p_keyword VARCHAR(255)
)
BEGIN
    SELECT *
    FROM nguoi_dung
    WHERE ho_ten LIKE CONCAT('%', p_keyword, '%')
       OR email LIKE CONCAT('%', p_keyword, '%')
       OR so_dien_thoai LIKE CONCAT('%', p_keyword, '%');
END$$

DROP PROCEDURE IF EXISTS AdvancedSearchNguoiDung $$
CREATE PROCEDURE AdvancedSearchNguoiDung(
    IN p_ho_ten VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_ma_vai_tro INT,
    IN p_ma_trang_thai INT,
    IN p_so_dien_thoai VARCHAR(20)
)
BEGIN
    SELECT *
    FROM nguoi_dung
    WHERE (p_ho_ten IS NULL OR ho_ten LIKE CONCAT('%', p_ho_ten, '%'))
      AND (p_email IS NULL OR email LIKE CONCAT('%', p_email, '%'))
      AND (p_ma_vai_tro IS NULL OR ma_vai_tro = p_ma_vai_tro)
      AND (p_ma_trang_thai IS NULL OR ma_trang_thai = p_ma_trang_thai)
      AND (p_so_dien_thoai IS NULL OR so_dien_thoai LIKE CONCAT('%', p_so_dien_thoai, '%'));
END$$

DELIMITER ;
