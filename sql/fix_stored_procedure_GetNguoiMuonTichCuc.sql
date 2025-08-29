DELIMITER $$

DROP PROCEDURE IF EXISTS GetNguoiMuonTichCuc$$

CREATE PROCEDURE GetNguoiMuonTichCuc()
BEGIN
    SELECT nd.ho_ten, COUNT(pm.ma_phieu_muon) AS so_luot_muon
    FROM nguoi_dung nd
    JOIN phieu_muon pm ON nd.ma_nguoi_dung = pm.ma_doc_gia
    WHERE pm.ngay_muon >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
    GROUP BY nd.ho_ten
    ORDER BY so_luot_muon DESC
    LIMIT 10;
END$$

DELIMITER ;
