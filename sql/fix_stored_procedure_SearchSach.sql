DELIMITER $$

DROP PROCEDURE IF EXISTS SearchSach$$

CREATE PROCEDURE SearchSach(
    IN p_keyword VARCHAR(255)
)
BEGIN
    SELECT *
    FROM sach
    WHERE MATCH(tieu_de, tac_gia, ISBN) AGAINST (p_keyword IN NATURAL LANGUAGE MODE)
       OR tieu_de LIKE CONCAT('%', p_keyword, '%')
       OR tac_gia LIKE CONCAT('%', p_keyword, '%')
       OR ISBN LIKE CONCAT('%', p_keyword, '%');
END$$

DELIMITER ;
