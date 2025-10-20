const express = require("express");
const router = express.Router();
const quanLyController = require("../controllers/quan_ly.controller");

// Route thống kê sách mượn nhiều nhất
router.get("/sach-muon-nhieu-nhat", quanLyController.getSachMuonNhieuNhat);

// Route thống kê số lượt mượn/trả sách
router.get("/muon-tra-stats", quanLyController.getMuonTraStats);

// Route thống kê số sách theo thể loại
router.get("/sach-count-the-loai", quanLyController.getSachCountByTheLoai);

// Route thống kê người mượn nhiều nhất
router.get("/top-nguoi-muon", quanLyController.getTopNguoiMuon);

// Route báo cáo tồn kho sách
router.get("/ton-kho-sach", quanLyController.getTonKhoSach);

// Route thống kê sách theo thể loại, năm xuất bản
router.get(
  "/sach-stats-the-loai-nam",
  quanLyController.getSachStatsByTheLoaiNam
);

// Route thống kê người mượn tích cực
router.get("/nguoi-muon-tich-cuc", quanLyController.getNguoiMuonTichCuc);

// Route báo cáo tồn kho sách (cập nhật chi tiết hơn)
router.get("/bao-cao-ton-kho-sach", quanLyController.baoCaoTonKhoSach);

// Route thống kê sách theo nhà xuất bản
router.get("/thong-ke-sach-theo-nxb", quanLyController.thongKeSachTheoNXB);

// Routes bảng xếp hạng người dùng
router.get("/ranking/borrow-count", quanLyController.getRankingByBorrowCount);
router.get("/ranking/favorites", quanLyController.getRankingByFavorites);
router.get("/ranking/overall", quanLyController.getOverallRanking);
router.put("/ranking/update-scores", quanLyController.updateUserScores);

module.exports = router;
