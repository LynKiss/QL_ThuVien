// routes/notification.route.js
var express = require("express");
var router = express.Router();
const notificationController = require("../controllers/notification.controller");
const { authenticate } = require("../middlewares/authMiddleware");

router.get("/", authenticate, notificationController.getNotifications);
router.put("/:ma_tb/read", authenticate, notificationController.markAsRead);
router.get(
  "/unread-count",
  authenticate,
  notificationController.getUnreadCount
);

module.exports = router;
