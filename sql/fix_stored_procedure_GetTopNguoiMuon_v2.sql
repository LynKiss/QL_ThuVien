DELIMITER $$

DROP PROCEDURE IF EXISTS GetTopNguoiMuon$$

CREATE PROCEDURE GetTopNguoiMuon()
BEGIN
    SELECT nd.ho_ten, COUNT(pm.ma_phieu_muon) AS so_luot_muon
    FROM nguoi_dung nd
    JOIN phieu_muon pm ON nd.ma_nguoi_dung = pm.ma_doc_gia
    GROUP BY nd.ho_ten
    ORDER BY so_luot_muon DESC
    LIMIT 10;
END$$

DELIMITER ;
