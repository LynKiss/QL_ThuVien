const express = require("express");
const router = express.Router();
const paymentController = require("../controllers/payment.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");

// Gọi khi thanh toán thành công (FE hoặc webhook gọi)
router.post(
  "/update-fine",
  authenticate,
  paymentController.updateFineAfterPayment
);

// IPN từ MoMo Sandbox
router.post("/momo/ipn", paymentController.handleMoMoIPN);

router.get(
  "/",
  authenticate,
  authorizeRoles(1, 2),
  paymentController.getAllPayments
); // Admin and Librarian
router.get("/user/:id", authenticate, paymentController.getPaymentsByUser);
router.get(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  paymentController.getPaymentById
); // Admin and Librarian
router.post("/", authenticate, paymentController.createPayment);
router.put(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  paymentController.updatePayment
); // Admin and Librarian
router.delete(
  "/:id",
  authenticate,
  authorizeRoles(1),
  paymentController.deletePayment
); // Admin only

// MoMo payment routes
router.post("/momo/pay", authenticate, paymentController.createMoMoPayment);
router.post("/momo/ipn", paymentController.handleMoMoIPN); // Webhook, không cần auth

module.exports = router;
