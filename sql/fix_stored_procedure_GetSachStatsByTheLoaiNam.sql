DELIMITER $$

DROP PROCEDURE IF EXISTS GetSachStatsByTheLoaiNam$$

CREATE PROCEDURE GetSachStatsByTheLoaiNam()
BEGIN
    SELECT tl.ten_the_loai, s.nam_xuat_ban, COUNT(s.ma_sach) AS so_luong
    FROM sach s
    JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    WHERE s.nam_xuat_ban IS NOT NULL
    GROUP BY tl.ten_the_loai, s.nam_xuat_ban;
END$$

DELIMITER ;
