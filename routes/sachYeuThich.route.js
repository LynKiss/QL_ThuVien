const express = require("express");
const router = express.Router();
const sachYeuThichController = require("../controllers/sachYeuThichController");
const { authenticate } = require("../middlewares/authMiddleware");

// Lấy danh sách sách yêu thích của user (JWT)
router.get("/", authenticate, sachYeuThichController.getByUser);

// Thêm 1 sách vào danh sách yêu thích
router.post("/", authenticate, sachYeuThichController.add);

// Xóa 1 sách khỏi danh sách yêu thích
router.delete("/:ma_sach", authenticate, sachYeuThichController.remove);

module.exports = router;
