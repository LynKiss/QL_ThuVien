DELIMITER $$

DROP PROCEDURE IF EXISTS AdvancedSearchNguoiDung $$
CREATE PROCEDURE AdvancedSearchNguoiDung(
    IN p_ho_ten VARCHAR(255),
    IN p_dia_chi VARCHAR(255),
    IN p_so_dien_thoai VARCHAR(20)
)
BEGIN
    SELECT *
    FROM nguoi_dung
    WHERE (p_ho_ten IS NULL OR ho_ten LIKE CONCAT('%', p_ho_ten, '%'))
      AND (p_dia_chi IS NULL OR dia_chi LIKE CONCAT('%', p_dia_chi, '%'))
      AND (p_so_dien_thoai IS NULL OR so_dien_thoai LIKE CONCAT('%', p_so_dien_thoai, '%'));
END$$

DELIMITER ;
