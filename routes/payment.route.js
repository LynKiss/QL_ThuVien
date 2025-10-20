// routes/payment.route.js
const express = require("express");
const router = express.Router();
const paymentController = require("../controllers/payment.controller");
const {
  authenticate,
  authorizeRoles,
} = require("../middlewares/authMiddleware");

// === CRUD PAYMENT ===
router.get(
  "/",
  authenticate,
  authorizeRoles(1, 2),
  paymentController.getAllPayments
);
router.get("/user/:id", authenticate, paymentController.getPaymentsByUser);
router.get(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  paymentController.getPaymentById
);
router.post("/", authenticate, paymentController.createPayment);
router.put(
  "/:id",
  authenticate,
  authorizeRoles(1, 2),
  paymentController.updatePayment
);
router.delete(
  "/:id",
  authenticate,
  authorizeRoles(1),
  paymentController.deletePayment
);

// === MOMO ===
router.post("/momo/pay", authenticate, paymentController.createMoMoPayment);
router.post("/momo/ipn", paymentController.handleMoMoIPN);

// === CẬP NHẬT PHẠT SAU THANH TOÁN (GỌI THỦ CÔNG) ===
router.post(
  "/update-fine",
  authenticate,
  paymentController.updateFineAfterPayment
);

module.exports = router;
