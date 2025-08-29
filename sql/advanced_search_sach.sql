DELIMITER $$

DROP PROCEDURE IF EXISTS AdvancedSearchSach$$

CREATE PROCEDURE AdvancedSearchSach(
    IN p_tieu_de VARCHAR(255),
    IN p_tac_gia VARCHAR(100),
    IN p_ISBN VARCHAR(20)
)
BEGIN
    SELECT *
    FROM sach
    WHERE (p_tieu_de IS NULL OR tieu_de LIKE CONCAT('%', p_tieu_de, '%'))
      AND (p_tac_gia IS NULL OR tac_gia LIKE CONCAT('%', p_tac_gia, '%'))
      AND (p_ISBN IS NULL OR ISBN LIKE CONCAT('%', p_ISBN, '%'));
END$$

DELIMITER ;
