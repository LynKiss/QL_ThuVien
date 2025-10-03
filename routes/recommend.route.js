const express = require("express");
const router = express.Router();
const recommendController = require("../controllers/recommend.controller");

router.get("/:userId", recommendController.getRecommendations);

module.exports = router;
