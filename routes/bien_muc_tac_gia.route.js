const express = require("express");
const router = express.Router();
const bien_muc_tac_giaController = require("../controllers/bien_muc_tac_gia.controller");

// Lấy tất cả biên mục tác giả
router.get("/", bien_muc_tac_giaController.getAll);

// Lấy biên mục tác giả theo ID
router.get("/:id", bien_muc_tac_giaController.getById);

// Thêm mới biên mục tác giả
router.post("/", bien_muc_tac_giaController.insert);

// Cập nhật biên mục tác giả
router.put("/:id", bien_muc_tac_giaController.update);

// Xóa biên mục tác giả
router.delete("/:id", bien_muc_tac_giaController.delete);

module.exports = router;
