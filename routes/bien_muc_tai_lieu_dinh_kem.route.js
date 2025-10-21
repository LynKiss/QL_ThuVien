const express = require("express");
const router = express.Router();
const bien_muc_tai_lieu_dinh_kemController = require("../controllers/bien_muc_tai_lieu_dinh_kem.controller");

// Lấy tất cả biên mục tài liệu đính kèm
router.get("/", bien_muc_tai_lieu_dinh_kemController.getAll);

// Lấy biên mục tài liệu đính kèm theo ID
router.get("/:id", bien_muc_tai_lieu_dinh_kemController.getById);

// Thêm mới biên mục tài liệu đính kèm
router.post("/", bien_muc_tai_lieu_dinh_kemController.insert);

// Cập nhật biên mục tài liệu đính kèm
router.put("/:id", bien_muc_tai_lieu_dinh_kemController.update);

// Xóa biên mục tài liệu đính kèm
router.delete("/:id", bien_muc_tai_lieu_dinh_kemController.delete);

module.exports = router;
