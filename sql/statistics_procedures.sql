DELIMITER $$

-- Thống kê số lượt mượn/trả sách
CREATE PROCEDURE GetMuonTraStats()
BEGIN
    SELECT 
        COUNT(DISTINCT pm.ma_phieu_muon) AS so_luot_muon,
        COUNT(DISTINCT pt.ma_phieu_tra) AS so_luot_tra
    FROM phieu_muon pm
    LEFT JOIN phieu_tra pt ON pm.ma_phieu_muon = pt.ma_phieu_muon;
END$$

-- Thống kê số sách theo thể loại
CREATE PROCEDURE GetSachCountByTheLoai()
BEGIN
    SELECT tl.ten_the_loai, COUNT(s.ma_sach) AS so_luong_sach
    FROM sach s
    JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    GROUP BY tl.ten_the_loai;
END$$

-- Thống kê người mượn nhiều nhất
CREATE PROCEDURE GetTopNguoiMuon()
BEGIN
    SELECT nd.ho_ten, COUNT(pm.ma_phieu_muon) AS so_luot_muon
    FROM nguoi_dung nd
    JOIN phieu_muon pm ON nd.ma_nguoi_dung = pm.ma_nguoi_dung
    GROUP BY nd.ho_ten
    ORDER BY so_luot_muon DESC
    LIMIT 10;
END$$

-- Thống kê sách bị quá hạn
CREATE PROCEDURE GetSachQuaHan()
BEGIN
    SELECT s.tieu_de, pm.ngay_muon, DATEDIFF(CURDATE(), pm.ngay_muon) AS so_ngay_qua_han
    FROM phieu_muon pm
    JOIN chi_tiet_muon ctm ON pm.ma_phieu_muon = ctm.ma_phieu_muon
    JOIN sach s ON ctm.ma_sach = s.ma_sach
    WHERE pm.trang_thai = 'dang muon' AND DATEDIFF(CURDATE(), pm.ngay_muon) > 30;
END$$

-- Báo cáo tồn kho sách
CREATE PROCEDURE GetTonKhoSach()
BEGIN
    SELECT s.tieu_de, s.so_luong
    FROM sach s
    WHERE s.so_luong < 5;
END$$

-- Thống kê sách theo thể loại, năm xuất bản
CREATE PROCEDURE GetSachStatsByTheLoaiNam()
BEGIN
    SELECT tl.ten_the_loai, YEAR(s.ngay_xuat_ban) AS nam_xuat_ban, COUNT(s.ma_sach) AS so_luong
    FROM sach s
    JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    GROUP BY tl.ten_the_loai, YEAR(s.ngay_xuat_ban);
END$$

DELIMITER ;
