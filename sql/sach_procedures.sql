DELIMITER $$

CREATE PROCEDURE GetAllSach()
BEGIN
    SELECT * FROM sach;
END$$

CREATE PROCEDURE GetSachById(IN p_ma_sach INT)
BEGIN
    SELECT * FROM sach WHERE ma_sach = p_ma_sach;
END$$

CREATE PROCEDURE InsertSach(
    IN p_tieu_de VARCHAR(255),
    IN p_tac_gia VARCHAR(255),
    IN p_ISBN VARCHAR(50),
    IN p_so_luong INT,
    IN p_so_trang INT,
    IN p_mo_ta TEXT,
    IN p_hinh_bia VARCHAR(255),
    IN p_ma_nxb INT,
    IN p_ma_danh_muc INT,
    IN p_ma_the_loai INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_khu_vuc INT,
    IN p_ma_ncc INT
)
BEGIN
    INSERT INTO sach (tieu_de, tac_gia, ISBN, so_luong, so_trang, mo_ta, hinh_bia, ma_nxb, ma_danh_muc, ma_the_loai, ma_ngon_ngu, ma_khu_vuc, ma_ncc)
    VALUES (p_tieu_de, p_tac_gia, p_ISBN, p_so_luong, p_so_trang, p_mo_ta, p_hinh_bia, p_ma_nxb, p_ma_danh_muc, p_ma_the_loai, p_ma_ngon_ngu, p_ma_khu_vuc, p_ma_ncc);
END$$

CREATE PROCEDURE UpdateSach(
    IN p_ma_sach INT,
    IN p_tieu_de VARCHAR(255),
    IN p_tac_gia VARCHAR(255),
    IN p_ISBN VARCHAR(50),
    IN p_so_luong INT,
    IN p_so_trang INT,
    IN p_mo_ta TEXT,
    IN p_hinh_bia VARCHAR(255),
    IN p_ma_nxb INT,
    IN p_ma_danh_muc INT,
    IN p_ma_the_loai INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_khu_vuc INT,
    IN p_ma_ncc INT
)
BEGIN
    UPDATE sach
    SET tieu_de = p_tieu_de,
        tac_gia = p_tac_gia,
        ISBN = p_ISBN,
        so_luong = p_so_luong,
        so_trang = p_so_trang,
        mo_ta = p_mo_ta,
        hinh_bia = p_hinh_bia,
        ma_nxb = p_ma_nxb,
        ma_danh_muc = p_ma_danh_muc,
        ma_the_loai = p_ma_the_loai,
        ma_ngon_ngu = p_ma_ngon_ngu,
        ma_khu_vuc = p_ma_khu_vuc,
        ma_ncc = p_ma_ncc
    WHERE ma_sach = p_ma_sach;
END$$

CREATE PROCEDURE DeleteSach(IN p_ma_sach INT)
BEGIN
    DELETE FROM sach WHERE ma_sach = p_ma_sach;
END$$

CREATE PROCEDURE SearchSach(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM sach
    WHERE tieu_de LIKE CONCAT('%', p_keyword, '%')
       OR tac_gia LIKE CONCAT('%', p_keyword, '%')
       OR ISBN LIKE CONCAT('%', p_keyword, '%');
END$$

DELIMITER ;
