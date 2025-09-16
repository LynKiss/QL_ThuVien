const express = require("express");
const router = express.Router();
const datMuonFlowController = require("../controllers/datMuonFlow.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");

// Chỉ định đúng hàm
router.post("/dat-muon", authenticate, datMuonFlowController.datMuon);
// Duyệt đặt mượn (thủ thư)
router.put(
  "/dat-muon/:id/approve",
  authenticate,
  authorizeRoles(1, 2),
  datMuonFlowController.approveDatMuon
);
// Hủy đơn đặt mượn
router.put(
  "/dat-muon/:id/reject",
  authenticate,
  authorizeRoles(1, 2),
  datMuonFlowController.rejectDatMuon
);

module.exports = router;
