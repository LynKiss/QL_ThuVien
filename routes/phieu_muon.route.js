var express = require("express");
var router = express.Router();
const phieu_muonController = require("../controllers/phieu_muon.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");
// Lấy danh sách phiếu mượn của chính user đang login
router.get("/lich-su", authenticate, phieu_muonController.getHistory);

// Lấy chi tiết phiếu mượn của user đang login
router.get("/lich-su/:maPhieu", authenticate, phieu_muonController.getDetail);
router.get("/", phieu_muonController.getAll);
router.get("/:id", phieu_muonController.getById);
router.post("/", phieu_muonController.insert);
router.put("/:id", phieu_muonController.update);
router.delete("/:id", phieu_muonController.delete);

module.exports = router;
