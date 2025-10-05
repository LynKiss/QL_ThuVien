// routes/chat.route.js
const express = require("express");
const router = express.Router();
const {
  chatWithAI,
  getChatHistory,
} = require("../controllers/chat.controller");
const { authenticate } = require("../middlewares/authMiddleware");

router.post("/", authenticate, chatWithAI);
router.get("/history", authenticate, getChatHistory);

module.exports = router;
