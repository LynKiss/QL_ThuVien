var express = require("express");
var router = express.Router();
const sachController = require("../controllers/sach.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");
const upload = require("../middlewares/uploadCloudinary");
router.get("/most-borroweds", sachController.getMostBorroweds);
router.get("/", sachController.getAll);
// ====================== CÁC API CHO THƯ VIỆN ======================

router.get("/new", sachController.getNewBooks);
router.get("/noibat", sachController.getFeaturedBooks);
router.get("/fulls", sachController.getFullBooks);
router.get("/most-borrowed", sachController.getMostBorrowed);

router.post(
  "/",
  authenticate,
  authorizeRoles(1, 2),
  upload.single("hinh_bia"),
  sachController.insert
);
router.put(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  upload.single("hinh_bia"),
  sachController.update
);
router.delete(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  sachController.delete
);
router.post("/search", sachController.search);
router.post("/advanced-search", sachController.advancedSearch);
router.get("/full", sachController.getAllFullInfo);
router.get("/:id", sachController.getById);
module.exports = router;
