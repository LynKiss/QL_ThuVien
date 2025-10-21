const express = require("express");
const router = express.Router();
const cau_hinhController = require("../controllers/cau_hinh.controller");

// Lấy tất cả cấu hình
router.get("/", cau_hinhController.getAll);

// Lấy cấu hình theo ten_key
router.get("/:ten_key", cau_hinhController.getById);

// Thêm mới cấu hình
router.post("/", cau_hinhController.insert);

// Cập nhật cấu hình
router.put("/:ten_key", cau_hinhController.update);

// Xóa cấu hình
router.delete("/:ten_key", cau_hinhController.delete);

module.exports = router;
