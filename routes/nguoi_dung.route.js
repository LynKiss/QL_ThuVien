var express = require("express");
var router = express.Router();
const nguoi_dungController = require("../controllers/nguoi_dung.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");

router.get("/", authenticate, nguoi_dungController.getAll);
router.get("/:id", authenticate, nguoi_dungController.getById);
router.post("/", nguoi_dungController.insert);
router.put("/:id", authenticate, nguoi_dungController.update);
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

module.exports = router;
