var express = require("express");
var router = express.Router();
const hoTroController = require("../controllers/ho_tro.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");

// ---------------- User ----------------
router.post("/", authenticate, hoTroController.create); // gửi ticket
router.get("/me", authenticate, hoTroController.getMyTickets); // xem ticket của mình
router.get("/:id", authenticate, hoTroController.getById); // xem chi tiết ticket

// ---------------- Admin ----------------
router.get("/", authenticate, authorizeRoles(1, 2), hoTroController.getAll);
router.put(
  "/:id/status",
  authenticate,
  authorizeRoles(1, 2),
  hoTroController.updateStatus
);

// ---------------- Reply (chat 2 chiều) ----------------
router.post("/:id/replies", authenticate, hoTroController.addReply);

module.exports = router;
