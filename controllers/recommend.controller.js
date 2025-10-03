const axios = require("axios");

exports.getRecommendations = async (req, res) => {
  try {
    const { userId } = req.params;
    const response = await axios.get(
      `http://localhost:5001/recommend/${userId}`
    );
    res.json(response.data);
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Lỗi khi gọi AI gợi ý" });
  }
};
