const express = require("express");
const router = express.Router();
const yeuCauTraController = require("../controllers/yeu_cau_tra.controller");
const { authenticate, authorizeRoles } = require("../middlewares/authMiddleware");

router.get("/",  yeuCauTraController.getAll);
router.get("/:id",  yeuCauTraController.getById);
router.get("/phieu-muon/:ma_phieu_muon",  yeuCauTraController.getByPhieuMuon);
router.post("/",  yeuCauTraController.insert);
router.put("/:id",  yeuCauTraController.update);
router.put("/:id/trang-thai",  yeuCauTraController.updateTrangThai);
router.delete("/:id",  yeuCauTraController.delete);

module.exports = router;
