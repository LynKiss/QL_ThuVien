const express = require("express");
const router = express.Router();
const ban_sao_sachController = require("../controllers/ban_sao_sach.controller");

// Lấy tất cả bản sao sách
router.get("/", ban_sao_sachController.getAll);

// Lấy bản sao sách theo ID
router.get("/:id", ban_sao_sachController.getById);

// Thêm mới bản sao sách
router.post("/", ban_sao_sachController.insert);

// Cập nhật bản sao sách
router.put("/:id", ban_sao_sachController.update);

// Xóa bản sao sách
router.delete("/:id", ban_sao_sachController.delete);

module.exports = router;
