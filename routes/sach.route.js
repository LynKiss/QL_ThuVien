var express = require("express");
var router = express.Router();
const sachController = require("../controllers/sach.controller");
const { authenticate } = require("../middlewares/authMiddleware");

router.get("/", sachController.getAll);
router.post("/search", authenticate, sachController.search);
router.post("/advanced-search", authenticate, sachController.advancedSearch);
router.get("/most-borrowed", authenticate, sachController.getMostBorrowed);
router.get("/:id", authenticate, sachController.getById);
router.post("/", authenticate, sachController.insert);
router.put("/:id", authenticate, sachController.update);
router.delete("/:id", authenticate, sachController.delete);

module.exports = router;
