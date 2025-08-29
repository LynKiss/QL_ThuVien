DELIMITER $$

-- Thống kê người mượn tích cực (ví dụ: người mượn nhiều sách nhất trong tháng)
CREATE PROCEDURE GetNguoiMuonTichCuc()
BEGIN
    SELECT nd.ho_ten, COUNT(pm.ma_phieu_muon) AS so_luot_muon
    FROM nguoi_dung nd
    JOIN phieu_muon pm ON nd.ma_nguoi_dung = pm.ma_nguoi_dung
    WHERE pm.ngay_muon >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
    GROUP BY nd.ho_ten
    ORDER BY so_luot_muon DESC
    LIMIT 10;
END$$

-- Báo cáo tồn kho sách (cập nhật chi tiết hơn)
CREATE PROCEDURE BaoCaoTonKhoSach()
BEGIN
    SELECT s.tieu_de, s.so_luong, IF(s.so_luong < 5, 'Thiếu', 'Đủ') AS tinh_trang
    FROM sach s;
END$$

-- Thống kê sách theo nhà xuất bản
CREATE PROCEDURE ThongKeSachTheoNXB()
BEGIN
    SELECT nxb.ten_nxb, COUNT(s.ma_sach) AS so_luong_sach
    FROM sach s
    JOIN nha_xuat_ban nxb ON s.ma_nxb = nxb.ma_nxb
    GROUP BY nxb.ten_nxb;
END$$

DELIMITER ;
