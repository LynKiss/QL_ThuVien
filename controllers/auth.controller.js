const jwt = require("jsonwebtoken");
const config = require("../common/config");
const Nguoi_dung = require("../models/nguoi_dung.model");
const db = require("../common/db");

module.exports = {
  login: (req, res) => {
    const { email, password } = req.body;
    Nguoi_dung.authenticate(email, password, (err, user) => {
      if (err) {
        console.error("DB error:", err);
        return res.status(500).json({ message: "Lỗi server" });
      }
      if (!user) {
        return res.status(401).json({ message: "Sai email hoặc mật khẩu" });
      }

      // update streak bằng callback
      db.query("CALL sp_update_streak(?)", [user.ma_nguoi_dung], (err1) => {
        if (err1) {
          console.error("Lỗi khi update streak:", err1);
          return res.status(500).json({ message: "Đăng nhập lỗi hệ thống" });
        }

        // lấy profile mới bằng callback
        db.query(
          "CALL sp_get_profile(?)",
          [user.ma_nguoi_dung],
          (err2, result) => {
            if (err2) {
              console.error("Lỗi khi lấy profile:", err2);
              return res.status(500).json({ message: "Lỗi hệ thống" });
            }

            const profile = result[0][0];

            // tạo token
            const token = jwt.sign(
              {
                id: user.ma_nguoi_dung,
                email: user.email,
                ma_vai_tro: user.ma_vai_tro,
              },
              config.jwt.secret,
              { expiresIn: config.jwt.expiresIn }
            );

            res.json({ user: profile, token });
          }
        );
      });
    });
  },
};
