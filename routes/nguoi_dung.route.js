var express = require("express");
var router = express.Router();
const nguoi_dungController = require("../controllers/nguoi_dung.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");
const upload = require("../middlewares/uploadCloudinary");

router.get("/", authenticate, nguoi_dungController.getAll);
router.get("/:id", authenticate, nguoi_dungController.getById);
// 🔥 Route mới: HomeScreen
router.get("/home/:id", authenticate, nguoi_dungController.getHome);
router.post("/", upload.single("avatar"), nguoi_dungController.insert);
router.put(
  "/:id",
  authenticate,
  upload.single("avatar"),
  nguoi_dungController.update
);
router.delete(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  nguoi_dungController.delete
);
router.post("/search", authenticate, nguoi_dungController.search);
router.post(
  "/advanced-search",
  authenticate,
  authorizeRoles(1, 2),
  nguoi_dungController.advancedSearch
);
// 🔥 Route mới: lấy profile đầy đủ từ procedure
router.get("/profile/me", authenticate, nguoi_dungController.getMe);
router.get("/profile/:id", authenticate, nguoi_dungController.getProfile);

module.exports = router;
