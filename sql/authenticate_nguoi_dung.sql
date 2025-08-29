DELIMITER $$

CREATE PROCEDURE AuthenticateNguoiDung(
    IN p_email VARCHAR(100),
    IN p_mat_khau VARCHAR(255)
)
BEGIN
    SELECT *
    FROM nguoi_dung
    WHERE email = p_email
      AND mat_khau = p_mat_khau
      AND ma_trang_thai = 1
    LIMIT 1;
END $$

DELIMITER ;
