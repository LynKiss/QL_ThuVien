CREATE TABLE trang_thai_nguoi_dung (
    ma_trang_thai INT AUTO_INCREMENT PRIMARY KEY,
    ten_trang_thai VARCHAR(50) NOT NULL
);

ALTER TABLE nguoi_dung
DROP COLUMN trang_thai_nguoi_dung,
ADD COLUMN ma_trang_thai INT,
ADD CONSTRAINT fk_nguoi_dung_trang_thai FOREIGN KEY (ma_trang_thai) REFERENCES trang_thai_nguoi_dung(ma_trang_thai);
