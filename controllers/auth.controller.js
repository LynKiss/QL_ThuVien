const jwt = require("jsonwebtoken");
const config = require("../common/config");
const Nguoi_dung = require("../models/nguoi_dung.model");

module.exports = {
  login: (req, res) => {
    const { email, password } = req.body;
    Nguoi_dung.authenticate(email, password, (user) => {
      if (user) {
        const token = jwt.sign(
          {
            id: user.ma_nguoi_dung,
            email: user.email,
            ma_vai_tro: user.ma_vai_tro,
          },
          config.jwt.secret,
          { expiresIn: config.jwt.expiresIn }
        );
        res.json({ user, token });
      } else {
        res.status(401).json({ message: "Sai email hoặc mật khẩu" });
      }
    });
  },
};
