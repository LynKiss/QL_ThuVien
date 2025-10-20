const express = require("express");
const router = express.Router();
const datMuonFlowController = require("../controllers/datMuonFlow.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");

// ================= ĐẶT MƯỢN =================
// Độc giả đặt mượn
router.post("/dat-muon", authenticate, datMuonFlowController.datMuon);

// Thủ thư duyệt đơn
router.put(
  "/dat-muon/:id/approve",
  authenticate,
  authorizeRoles(1, 2), // admin, thủ thư
  datMuonFlowController.approveDatMuon
);

// Thủ thư từ chối đơn
router.put(
  "/dat-muon/:id/reject",
  authenticate,
  authorizeRoles(1, 2),
  datMuonFlowController.rejectDatMuon
);
// ================= TRẢ SÁCH =================
// Độc giả gửi yêu cầu trả
router.post(
  "/tra-sach/request",
  authenticate,
  datMuonFlowController.requestTraSach
);

// Thủ thư xác nhận trả chi tiết (gọi STO ConfirmTraSachChiTietFull)
router.post(
  "/tra-sach/confirm",
  authenticate,
  authorizeRoles(1, 2), // role 1 = admin, role 2 = thủ thư
  datMuonFlowController.confirmTraSachChiTiet
);

// ================= GIA HẠN =================
router.post(
  "/gia-han",
  authenticate,
  datMuonFlowController.giaHanPhieuMuon
);

module.exports = router;
