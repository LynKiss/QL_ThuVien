DELIMITER $$

-- Procedures for chi_tiet_dat_muon
CREATE PROCEDURE GetAllChiTietDatMuon()
BEGIN
    SELECT * FROM chi_tiet_dat_muon;
END$$

CREATE PROCEDURE GetChiTietDatMuonById(IN p_ma_dat_muon INT)
BEGIN
    SELECT * FROM chi_tiet_dat_muon WHERE ma_dat_muon = p_ma_dat_muon;
END$$

CREATE PROCEDURE InsertChiTietDatMuon(
    IN p_ma_dat_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    INSERT INTO chi_tiet_dat_muon (ma_dat_muon, ma_sach, so_luong)
    VALUES (p_ma_dat_muon, p_ma_sach, p_so_luong);
END$$

CREATE PROCEDURE UpdateChiTietDatMuon(
    IN p_ma_dat_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    UPDATE chi_tiet_dat_muon
    SET ma_sach = p_ma_sach,
        so_luong = p_so_luong
    WHERE ma_dat_muon = p_ma_dat_muon;
END$$

CREATE PROCEDURE DeleteChiTietDatMuon(IN p_ma_dat_muon INT)
BEGIN
    DELETE FROM chi_tiet_dat_muon WHERE ma_dat_muon = p_ma_dat_muon;
END$$

CREATE PROCEDURE SearchChiTietDatMuon(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM chi_tiet_dat_muon
    WHERE ma_dat_muon LIKE CONCAT('%', p_keyword, '%')
       OR ma_sach LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for chi_tiet_muon
CREATE PROCEDURE GetAllChiTietMuon()
BEGIN
    SELECT * FROM chi_tiet_muon;
END$$

CREATE PROCEDURE GetChiTietMuonById(IN p_ma_phieu_muon INT)
BEGIN
    SELECT * FROM chi_tiet_muon WHERE ma_phieu_muon = p_ma_phieu_muon;
END$$

CREATE PROCEDURE InsertChiTietMuon(
    IN p_ma_phieu_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    INSERT INTO chi_tiet_muon (ma_phieu_muon, ma_sach, so_luong)
    VALUES (p_ma_phieu_muon, p_ma_sach, p_so_luong);
END$$

CREATE PROCEDURE UpdateChiTietMuon(
    IN p_ma_phieu_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    UPDATE chi_tiet_muon
    SET ma_sach = p_ma_sach,
        so_luong = p_so_luong
    WHERE ma_phieu_muon = p_ma_phieu_muon;
END$$

CREATE PROCEDURE DeleteChiTietMuon(IN p_ma_phieu_muon INT)
BEGIN
    DELETE FROM chi_tiet_muon WHERE ma_phieu_muon = p_ma_phieu_muon;
END$$

CREATE PROCEDURE SearchChiTietMuon(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM chi_tiet_muon
    WHERE ma_phieu_muon LIKE CONCAT('%', p_keyword, '%')
       OR ma_sach LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for danh_gia
CREATE PROCEDURE GetAllDanhGia()
BEGIN
    SELECT * FROM danh_gia;
END$$

CREATE PROCEDURE GetDanhGiaById(IN p_ma_danh_gia INT)
BEGIN
    SELECT * FROM danh_gia WHERE ma_danh_gia = p_ma_danh_gia;
END$$

CREATE PROCEDURE InsertDanhGia(
    IN p_ma_sach INT,
    IN p_ma_doc_gia INT,
    IN p_diem INT,
    IN p_binh_luan TEXT,
    IN p_ngay_danh_gia DATE
)
BEGIN
    INSERT INTO danh_gia (ma_sach, ma_doc_gia, diem, binh_luan, ngay_danh_gia)
    VALUES (p_ma_sach, p_ma_doc_gia, p_diem, p_binh_luan, p_ngay_danh_gia);
END$$

CREATE PROCEDURE UpdateDanhGia(
    IN p_ma_danh_gia INT,
    IN p_ma_sach INT,
    IN p_ma_doc_gia INT,
    IN p_diem INT,
    IN p_binh_luan TEXT,
    IN p_ngay_danh_gia DATE
)
BEGIN
    UPDATE danh_gia
    SET ma_sach = p_ma_sach,
        ma_doc_gia = p_ma_doc_gia,
        diem = p_diem,
        binh_luan = p_binh_luan,
        ngay_danh_gia = p_ngay_danh_gia
    WHERE ma_danh_gia = p_ma_danh_gia;
END$$

CREATE PROCEDURE DeleteDanhGia(IN p_ma_danh_gia INT)
BEGIN
    DELETE FROM danh_gia WHERE ma_danh_gia = p_ma_danh_gia;
END$$

CREATE PROCEDURE SearchDanhGia(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM danh_gia
    WHERE binh_luan LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for danh_muc
CREATE PROCEDURE GetAllDanhMuc()
BEGIN
    SELECT * FROM danh_muc;
END$$

CREATE PROCEDURE GetDanhMucById(IN p_ma_danh_muc INT)
BEGIN
    SELECT * FROM danh_muc WHERE ma_danh_muc = p_ma_danh_muc;
END$$

CREATE PROCEDURE InsertDanhMuc(
    IN p_ten_danh_muc VARCHAR(255)
)
BEGIN
    INSERT INTO danh_muc (ten_danh_muc)
    VALUES (p_ten_danh_muc);
END$$

CREATE PROCEDURE UpdateDanhMuc(
    IN p_ma_danh_muc INT,
    IN p_ten_danh_muc VARCHAR(255)
)
BEGIN
    UPDATE danh_muc
    SET ten_danh_muc = p_ten_danh_muc
    WHERE ma_danh_muc = p_ma_danh_muc;
END$$

CREATE PROCEDURE DeleteDanhMuc(IN p_ma_danh_muc INT)
BEGIN
    DELETE FROM danh_muc WHERE ma_danh_muc = p_ma_danh_muc;
END$$

CREATE PROCEDURE SearchDanhMuc(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM danh_muc
    WHERE ten_danh_muc LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for dat_muon
CREATE PROCEDURE GetAllDatMuon()
BEGIN
    SELECT * FROM dat_muon;
END$$

CREATE PROCEDURE GetDatMuonById(IN p_ma_dat_muon INT)
BEGIN
    SELECT * FROM dat_muon WHERE ma_dat_muon = p_ma_dat_muon;
END$$

CREATE PROCEDURE InsertDatMuon(
    IN p_ma_nguoi_dung INT,
    IN p_ngay_dat DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    INSERT INTO dat_muon (ma_nguoi_dung, ngay_dat, trang_thai)
    VALUES (p_ma_nguoi_dung, p_ngay_dat, p_trang_thai);
END$$

CREATE PROCEDURE UpdateDatMuon(
    IN p_ma_dat_muon INT,
    IN p_ma_nguoi_dung INT,
    IN p_ngay_dat DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    UPDATE dat_muon
    SET ma_nguoi_dung = p_ma_nguoi_dung,
        ngay_dat = p_ngay_dat,
        trang_thai = p_trang_thai
    WHERE ma_dat_muon = p_ma_dat_muon;
END$$

CREATE PROCEDURE DeleteDatMuon(IN p_ma_dat_muon INT)
BEGIN
    DELETE FROM dat_muon WHERE ma_dat_muon = p_ma_dat_muon;
END$$

CREATE PROCEDURE SearchDatMuon(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM dat_muon
    WHERE trang_thai LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for khu_vuc
CREATE PROCEDURE GetAllKhuVuc()
BEGIN
    SELECT * FROM khu_vuc;
END$$

CREATE PROCEDURE GetKhuVucById(IN p_ma_khu_vuc INT)
BEGIN
    SELECT * FROM khu_vuc WHERE ma_khu_vuc = p_ma_khu_vuc;
END$$

CREATE PROCEDURE InsertKhuVuc(
    IN p_ten_khu_vuc VARCHAR(255)
)
BEGIN
    INSERT INTO khu_vuc (ten_khu_vuc)
    VALUES (p_ten_khu_vuc);
END$$

CREATE PROCEDURE UpdateKhuVuc(
    IN p_ma_khu_vuc INT,
    IN p_ten_khu_vuc VARCHAR(255)
)
BEGIN
    UPDATE khu_vuc
    SET ten_khu_vuc = p_ten_khu_vuc
    WHERE ma_khu_vuc = p_ma_khu_vuc;
END$$

CREATE PROCEDURE DeleteKhuVuc(IN p_ma_khu_vuc INT)
BEGIN
    DELETE FROM khu_vuc WHERE ma_khu_vuc = p_ma_khu_vuc;
END$$

CREATE PROCEDURE SearchKhuVuc(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM khu_vuc
    WHERE ten_khu_vuc LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for ngon_ngu
CREATE PROCEDURE GetAllNgonNgu()
BEGIN
    SELECT * FROM ngon_ngu;
END$$

CREATE PROCEDURE GetNgonNguById(IN p_ma_ngon_ngu INT)
BEGIN
    SELECT * FROM ngon_ngu WHERE ma_ngon_ngu = p_ma_ngon_ngu;
END$$

CREATE PROCEDURE InsertNgonNgu(
    IN p_ten_ngon_ngu VARCHAR(255)
)
BEGIN
    INSERT INTO ngon_ngu (ten_ngon_ngu)
    VALUES (p_ten_ngon_ngu);
END$$

CREATE PROCEDURE UpdateNgonNgu(
    IN p_ma_ngon_ngu INT,
    IN p_ten_ngon_ngu VARCHAR(255)
)
BEGIN
    UPDATE ngon_ngu
    SET ten_ngon_ngu = p_ten_ngon_ngu
    WHERE ma_ngon_ngu = p_ma_ngon_ngu;
END$$

CREATE PROCEDURE DeleteNgonNgu(IN p_ma_ngon_ngu INT)
BEGIN
    DELETE FROM ngon_ngu WHERE ma_ngon_ngu = p_ma_ngon_ngu;
END$$

CREATE PROCEDURE SearchNgonNgu(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM ngon_ngu
    WHERE ten_ngon_ngu LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for nguoi_dung
CREATE PROCEDURE GetAllNguoiDung()
BEGIN
    SELECT * FROM nguoi_dung;
END$$

CREATE PROCEDURE GetNguoiDungById(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT * FROM nguoi_dung WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END$$

CREATE PROCEDURE InsertNguoiDung(
    IN p_ho_ten VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_mat_khau VARCHAR(255),
    IN p_sdt VARCHAR(20),
    IN p_dia_chi TEXT
)
BEGIN
    INSERT INTO nguoi_dung (ho_ten, email, mat_khau, sdt, dia_chi)
    VALUES (p_ho_ten, p_email, p_mat_khau, p_sdt, p_dia_chi);
END$$

CREATE PROCEDURE UpdateNguoiDung(
    IN p_ma_nguoi_dung INT,
    IN p_ho_ten VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_mat_khau VARCHAR(255),
    IN p_sdt VARCHAR(20),
    IN p_dia_chi TEXT
)
BEGIN
    UPDATE nguoi_dung
    SET ho_ten = p_ho_ten,
        email = p_email,
        mat_khau = p_mat_khau,
        sdt = p_sdt,
        dia_chi = p_dia_chi
    WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END$$

CREATE PROCEDURE DeleteNguoiDung(IN p_ma_nguoi_dung INT)
BEGIN
    DELETE FROM nguoi_dung WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END$$

CREATE PROCEDURE SearchNguoiDung(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM nguoi_dung
    WHERE ho_ten LIKE CONCAT('%', p_keyword, '%')
       OR email LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for nha_cung_cap
CREATE PROCEDURE GetAllNhaCungCap()
BEGIN
    SELECT * FROM nha_cung_cap;
END$$

CREATE PROCEDURE GetNhaCungCapById(IN p_ma_ncc INT)
BEGIN
    SELECT * FROM nha_cung_cap WHERE ma_ncc = p_ma_ncc;
END$$

CREATE PROCEDURE InsertNhaCungCap(
    IN p_ten_ncc VARCHAR(255),
    IN p_dia_chi TEXT,
    IN p_sdt VARCHAR(20)
)
BEGIN
    INSERT INTO nha_cung_cap (ten_ncc, dia_chi, sdt)
    VALUES (p_ten_ncc, p_dia_chi, p_sdt);
END$$

CREATE PROCEDURE UpdateNhaCungCap(
    IN p_ma_ncc INT,
    IN p_ten_ncc VARCHAR(255),
    IN p_dia_chi TEXT,
    IN p_sdt VARCHAR(20)
)
BEGIN
    UPDATE nha_cung_cap
    SET ten_ncc = p_ten_ncc,
        dia_chi = p_dia_chi,
        sdt = p_sdt
    WHERE ma_ncc = p_ma_ncc;
END$$

CREATE PROCEDURE DeleteNhaCungCap(IN p_ma_ncc INT)
BEGIN
    DELETE FROM nha_cung_cap WHERE ma_ncc = p_ma_ncc;
END$$

CREATE PROCEDURE SearchNhaCungCap(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM nha_cung_cap
    WHERE ten_ncc LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for nha_xuat_ban
CREATE PROCEDURE GetAllNhaXuatBan()
BEGIN
    SELECT * FROM nha_xuat_ban;
END$$

CREATE PROCEDURE GetNhaXuatBanById(IN p_ma_nxb INT)
BEGIN
    SELECT * FROM nha_xuat_ban WHERE ma_nxb = p_ma_nxb;
END$$

CREATE PROCEDURE InsertNhaXuatBan(
    IN p_ten_nxb VARCHAR(255),
    IN p_dia_chi TEXT,
    IN p_sdt VARCHAR(20)
)
BEGIN
    INSERT INTO nha_xuat_ban (ten_nxb, dia_chi, sdt)
    VALUES (p_ten_nxb, p_dia_chi, p_sdt);
END$$

CREATE PROCEDURE UpdateNhaXuatBan(
    IN p_ma_nxb INT,
    IN p_ten_nxb VARCHAR(255),
    IN p_dia_chi TEXT,
    IN p_sdt VARCHAR(20)
)
BEGIN
    UPDATE nha_xuat_ban
    SET ten_nxb = p_ten_nxb,
        dia_chi = p_dia_chi,
        sdt = p_sdt
    WHERE ma_nxb = p_ma_nxb;
END$$

CREATE PROCEDURE DeleteNhaXuatBan(IN p_ma_nxb INT)
BEGIN
    DELETE FROM nha_xuat_ban WHERE ma_nxb = p_ma_nxb;
END$$

CREATE PROCEDURE SearchNhaXuatBan(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM nha_xuat_ban
    WHERE ten_nxb LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for nhat_ky_he_thong
CREATE PROCEDURE GetAllNhatKyHeThong()
BEGIN
    SELECT * FROM nhat_ky_he_thong;
END$$

CREATE PROCEDURE GetNhatKyHeThongById(IN p_ma_nhat_ky INT)
BEGIN
    SELECT * FROM nhat_ky_he_thong WHERE ma_nhat_ky = p_ma_nhat_ky;
END$$

CREATE PROCEDURE InsertNhatKyHeThong(
    IN p_noi_dung TEXT,
    IN p_thoi_gian DATETIME
)
BEGIN
    INSERT INTO nhat_ky_he_thong (noi_dung, thoi_gian)
    VALUES (p_noi_dung, p_thoi_gian);
END$$

CREATE PROCEDURE UpdateNhatKyHeThong(
    IN p_ma_nhat_ky INT,
    IN p_noi_dung TEXT,
    IN p_thoi_gian DATETIME
)
BEGIN
    UPDATE nhat_ky_he_thong
    SET noi_dung = p_noi_dung,
        thoi_gian = p_thoi_gian
    WHERE ma_nhat_ky = p_ma_nhat_ky;
END$$

CREATE PROCEDURE DeleteNhatKyHeThong(IN p_ma_nhat_ky INT)
BEGIN
    DELETE FROM nhat_ky_he_thong WHERE ma_nhat_ky = p_ma_nhat_ky;
END$$

CREATE PROCEDURE SearchNhatKyHeThong(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM nhat_ky_he_thong
    WHERE noi_dung LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for phieu_muon
CREATE PROCEDURE GetAllPhieuMuon()
BEGIN
    SELECT * FROM phieu_muon;
END$$

CREATE PROCEDURE GetPhieuMuonById(IN p_ma_phieu_muon INT)
BEGIN
    SELECT * FROM phieu_muon WHERE ma_phieu_muon = p_ma_phieu_muon;
END$$

CREATE PROCEDURE InsertPhieuMuon(
    IN p_ma_nguoi_dung INT,
    IN p_ngay_muon DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    INSERT INTO phieu_muon (ma_nguoi_dung, ngay_muon, trang_thai)
    VALUES (p_ma_nguoi_dung, p_ngay_muon, p_trang_thai);
END$$

CREATE PROCEDURE UpdatePhieuMuon(
    IN p_ma_phieu_muon INT,
    IN p_ma_nguoi_dung INT,
    IN p_ngay_muon DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    UPDATE phieu_muon
    SET ma_nguoi_dung = p_ma_nguoi_dung,
        ngay_muon = p_ngay_muon,
        trang_thai = p_trang_thai
    WHERE ma_phieu_muon = p_ma_phieu_muon;
END$$

CREATE PROCEDURE DeletePhieuMuon(IN p_ma_phieu_muon INT)
BEGIN
    DELETE FROM phieu_muon WHERE ma_phieu_muon = p_ma_phieu_muon;
END$$

CREATE PROCEDURE SearchPhieuMuon(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM phieu_muon
    WHERE trang_thai LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for phieu_tra
CREATE PROCEDURE GetAllPhieuTra()
BEGIN
    SELECT * FROM phieu_tra;
END$$

CREATE PROCEDURE GetPhieuTraById(IN p_ma_phieu_tra INT)
BEGIN
    SELECT * FROM phieu_tra WHERE ma_phieu_tra = p_ma_phieu_tra;
END$$

CREATE PROCEDURE InsertPhieuTra(
    IN p_ma_phieu_muon INT,
    IN p_ngay_tra DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    INSERT INTO phieu_tra (ma_phieu_muon, ngay_tra, trang_thai)
    VALUES (p_ma_phieu_muon, p_ngay_tra, p_trang_thai);
END$$

CREATE PROCEDURE UpdatePhieuTra(
    IN p_ma_phieu_tra INT,
    IN p_ma_phieu_muon INT,
    IN p_ngay_tra DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    UPDATE phieu_tra
    SET ma_phieu_muon = p_ma_phieu_muon,
        ngay_tra = p_ngay_tra,
        trang_thai = p_trang_thai
    WHERE ma_phieu_tra = p_ma_phieu_tra;
END$$

CREATE PROCEDURE DeletePhieuTra(IN p_ma_phieu_tra INT)
BEGIN
    DELETE FROM phieu_tra WHERE ma_phieu_tra = p_ma_phieu_tra;
END$$

CREATE PROCEDURE SearchPhieuTra(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM phieu_tra
    WHERE trang_thai LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for the_loai
CREATE PROCEDURE GetAllTheLoai()
BEGIN
    SELECT * FROM the_loai;
END$$

CREATE PROCEDURE GetTheLoaiById(IN p_ma_the_loai INT)
BEGIN
    SELECT * FROM the_loai WHERE ma_the_loai = p_ma_the_loai;
END$$

CREATE PROCEDURE InsertTheLoai(
    IN p_ten_the_loai VARCHAR(255)
)
BEGIN
    INSERT INTO the_loai (ten_the_loai)
    VALUES (p_ten_the_loai);
END$$

CREATE PROCEDURE UpdateTheLoai(
    IN p_ma_the_loai INT,
    IN p_ten_the_loai VARCHAR(255)
)
BEGIN
    UPDATE the_loai
    SET ten_the_loai = p_ten_the_loai
    WHERE ma_the_loai = p_ma_the_loai;
END$$

CREATE PROCEDURE DeleteTheLoai(IN p_ma_the_loai INT)
BEGIN
    DELETE FROM the_loai WHERE ma_the_loai = p_ma_the_loai;
END$$

CREATE PROCEDURE SearchTheLoai(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM the_loai
    WHERE ten_the_loai LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for tin_nhan
CREATE PROCEDURE GetAllTinNhan()
BEGIN
    SELECT * FROM tin_nhan;
END$$

CREATE PROCEDURE GetTinNhanById(IN p_ma_tin_nhan INT)
BEGIN
    SELECT * FROM tin_nhan WHERE ma_tin_nhan = p_ma_tin_nhan;
END$$

CREATE PROCEDURE InsertTinNhan(
    IN p_noi_dung TEXT,
    IN p_ma_nguoi_gui INT,
    IN p_ma_nguoi_nhan INT,
    IN p_thoi_gian DATETIME
)
BEGIN
    INSERT INTO tin_nhan (noi_dung, ma_nguoi_gui, ma_nguoi_nhan, thoi_gian)
    VALUES (p_noi_dung, p_ma_nguoi_gui, p_ma_nguoi_nhan, p_thoi_gian);
END$$

CREATE PROCEDURE UpdateTinNhan(
    IN p_ma_tin_nhan INT,
    IN p_noi_dung TEXT,
    IN p_ma_nguoi_gui INT,
    IN p_ma_nguoi_nhan INT,
    IN p_thoi_gian DATETIME
)
BEGIN
    UPDATE tin_nhan
    SET noi_dung = p_noi_dung,
        ma_nguoi_gui = p_ma_nguoi_gui,
        ma_nguoi_nhan = p_ma_nguoi_nhan,
        thoi_gian = p_thoi_gian
    WHERE ma_tin_nhan = p_ma_tin_nhan;
END$$

CREATE PROCEDURE DeleteTinNhan(IN p_ma_tin_nhan INT)
BEGIN
    DELETE FROM tin_nhan WHERE ma_tin_nhan = p_ma_tin_nhan;
END$$

CREATE PROCEDURE SearchTinNhan(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM tin_nhan
    WHERE noi_dung LIKE CONCAT('%', p_keyword, '%');
END$$

-- Procedures for vai_tro
CREATE PROCEDURE GetAllVaiTro()
BEGIN
    SELECT * FROM vai_tro;
END$$

CREATE PROCEDURE GetVaiTroById(IN p_ma_vai_tro INT)
BEGIN
    SELECT * FROM vai_tro WHERE ma_vai_tro = p_ma_vai_tro;
END$$

CREATE PROCEDURE InsertVaiTro(
    IN p_ten_vai_tro VARCHAR(255)
)
BEGIN
    INSERT INTO vai_tro (ten_vai_tro)
    VALUES (p_ten_vai_tro);
END$$

CREATE PROCEDURE UpdateVaiTro(
    IN p_ma_vai_tro INT,
    IN p_ten_vai_tro VARCHAR(255)
)
BEGIN
    UPDATE vai_tro
    SET ten_vai_tro = p_ten_vai_tro
    WHERE ma_vai_tro = p_ma_vai_tro;
END$$

CREATE PROCEDURE DeleteVaiTro(IN p_ma_vai_tro INT)
BEGIN
    DELETE FROM vai_tro WHERE ma_vai_tro = p_ma_vai_tro;
END$$

CREATE PROCEDURE SearchVaiTro(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM vai_tro
    WHERE ten_vai_tro LIKE CONCAT('%', p_keyword, '%');
END$$

DELIMITER ;
