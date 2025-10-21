const express = require("express");
const router = express.Router();
const trangThaiController = require("../controllers/trang_thai_nguoi_dung.controller");
const { authenticate, authorizeRoles } = require("../middlewares/authMiddleware");

router.get("/", trangThaiController.getAll);
router.get("/:id", authenticate, authorizeRoles(1, 2), trangThaiController.getById);
router.post("/", authenticate, authorizeRoles(1, 2), trangThaiController.insert);
router.put("/:id", authenticate, authorizeRoles(1, 2), trangThaiController.update);
router.delete("/:id", authenticate, authorizeRoles(1, 2), trangThaiController.delete);

module.exports = router;
