DELIMITER $$

DROP PROCEDURE IF EXISTS GetMostBorrowedBooks$$

CREATE PROCEDURE GetMostBorrowedBooks(
    IN p_limit INT
)
BEGIN
    SELECT s.ma_sach, s.tieu_de, s.tac_gia, s.ISBN, SUM(ctm.so_luong) AS total_borrowed
    FROM chi_tiet_muon ctm
    JOIN sach s ON ctm.ma_sach = s.ma_sach
    GROUP BY s.ma_sach, s.tieu_de, s.tac_gia, s.ISBN
    ORDER BY total_borrowed DESC
    LIMIT p_limit;
END$$

DELIMITER ;
