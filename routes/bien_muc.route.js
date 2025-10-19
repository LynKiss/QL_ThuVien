const express = require("express");
const router = express.Router();

// 🧩 Middleware upload
const { upload, handleUploads } = require("../middlewares/uploadBienMuc");
const bienMucController = require("../controllers/bien_muc.controller");
router.post("/", upload, handleUploads, bienMucController.themBienMuc);
router.post("/kichhoat", bienMucController.kichHoatBienMuc);
router.get("/full", bienMucController.getAllBienMucFull);
router.get("/:id/full", bienMucController.getBienMucFullById);
router.get("/", bienMucController.getAllBienMuc);
router.get("/:id", bienMucController.getBienMucById);

module.exports = router;
