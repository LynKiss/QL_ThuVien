const express = require("express");
const router = express.Router();
const phatController = require("../controllers/phat.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");

router.get("/user/:id", authenticate, phatController.getPhatByUser);
router.post("/pay", authenticate, phatController.payPhat); // Thanh toán phạt thủ công
router.get("/", authenticate, authorizeRoles(1, 2), phatController.getAllPhat); // Admin and Librarian
router.get(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  phatController.getPhatById
); // Admin and Librarian
router.post("/", authenticate, authorizeRoles(1, 2), phatController.createPhat); // Admin and Librarian
router.put(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  phatController.updatePhat
); // Admin and Librarian
router.delete(
  "/:id",
  authenticate,
  authorizeRoles(1),
  phatController.deletePhat
); // Admin only

module.exports = router;
