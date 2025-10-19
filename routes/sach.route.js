var express = require("express");
var router = express.Router();
const sachController = require("../controllers/sach.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");
const upload = require("../middlewares/uploadCloudinary");
// 🔹 Top sách mượn nhiều
router.get(
  "/most-borrowed",

  sachController.getMostBorrowed
);
// 🔹 Lấy danh sách tất cả sách
router.get("/", sachController.getAll);

// 🔹 Lấy danh sách đầy đủ (JOIN nhiều bảng)
router.get("/full", sachController.getAllFullInfo);

// 🔹 Lấy theo ID
router.get("/:id", sachController.getById);

// 🔹 Thêm mới (cho phép upload ảnh bìa)
router.post(
  "/",
  authenticate,
  authorizeRoles(1, 2),
  upload.single("hinh_bia"),
  sachController.insert
);

// 🔹 Cập nhật (cho phép upload ảnh bìa mới)
router.put(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  upload.single("hinh_bia"),
  sachController.update
);

// 🔹 Xóa sách
router.delete(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  sachController.delete
);

// 🔹 Tìm kiếm cơ bản
router.post(
  "/search",

  sachController.search
);

// 🔹 Tìm kiếm nâng cao
router.post(
  "/advanced-search",

  sachController.advancedSearch
);

module.exports = router;
