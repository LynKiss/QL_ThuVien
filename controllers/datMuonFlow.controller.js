const db = require("../common/db");

exports.datMuon = (req, res) => {
  const userId = req.user?.id; // Lấy từ JWT
  if (!userId) return res.status(401).json({ error: "Chưa đăng nhập" });

  const { ngay_du_kien_muon, ghi_chu, chi_tiet } = req.body;

  if (!chi_tiet || !Array.isArray(chi_tiet) || chi_tiet.length === 0) {
    return res.status(400).json({ error: "Danh sách sách mượn không hợp lệ" });
  }

  // Format ngày cho MySQL
  const today = new Date().toISOString().slice(0, 10);

  db.getConnection((err, connection) => {
    if (err) return res.status(500).json({ error: err.message });

    connection.beginTransaction((err) => {
      if (err) {
        connection.release();
        return res.status(500).json({ error: err.message });
      }

      // 1. Insert vào dat_muon
      const sqlDatMuon = "CALL InsertDatMuon(?, ?, ?, ?, ?, ?)";
      const paramsDatMuon = [
        userId,
        today,
        ngay_du_kien_muon,
        "Chờ duyệt",
        ghi_chu || null,
        null, // nhân viên duyệt sau
      ];

      connection.query(sqlDatMuon, paramsDatMuon, (err, result) => {
        if (err) {
          return connection.rollback(() => {
            connection.release();
            res.status(400).json({ error: err.sqlMessage || err.message });
          });
        }

        // Lấy id vừa insert
        let maDatMuon;
        try {
          maDatMuon = result[0][0].ma_dat_muon;
        } catch (e) {
          return connection.rollback(() => {
            connection.release();
            res.status(500).json({ error: "Không lấy được mã đặt mượn" });
          });
        }

        // 2. Insert chi tiết mượn
        const tasks = chi_tiet.map((item) => {
          return new Promise((resolve, reject) => {
            if (!item.ma_sach || item.so_luong <= 0) {
              return reject(new Error("Thông tin sách không hợp lệ"));
            }
            const sqlChiTiet = "CALL InsertChiTietDatMuon(?, ?, ?)";
            connection.query(
              sqlChiTiet,
              [maDatMuon, item.ma_sach, item.so_luong],
              (err) => {
                if (err) return reject(err);
                resolve();
              }
            );
          });
        });

        Promise.all(tasks)
          .then(() => {
            connection.commit((err) => {
              if (err) {
                return connection.rollback(() => {
                  connection.release();
                  res.status(500).json({ error: err.message });
                });
              }
              connection.release();
              res.status(201).json({
                message: "Đặt mượn thành công",
                ma_dat_muon: maDatMuon,
              });
            });
          })
          .catch((err) => {
            connection.rollback(() => {
              connection.release();
              res.status(400).json({ error: err.sqlMessage || err.message });
            });
          });
      });
    });
  });
};
exports.approveDatMuon = (req, res) => {
  const maDatMuon = req.params.id;
  const maNhanVien = req.user.id; // token của thủ thư

  if (!maNhanVien) {
    return res.status(401).json({ error: "Chỉ thủ thư mới có quyền duyệt" });
  }
  console.log(
    "ApproveDatMuon -> maDatMuon:",
    maDatMuon,
    "| maNhanVien:",
    maNhanVien
  );
  const sql = "CALL ApproveDatMuon(?, ?)";
  db.query(sql, [maDatMuon, maNhanVien], (err, result) => {
    if (err) {
      return res.status(400).json({ error: err.sqlMessage || err.message });
    }
    console.log("ApproveDatMuon result:", JSON.stringify(result)); // log kết quả trả về
    res.json({
      message: "Duyệt đơn thành công",
      ma_phieu_muon: result[0][0].ma_phieu_muon,
    });
  });
};

exports.rejectDatMuon = (req, res) => {
  const maDatMuon = req.params.id;
  const maNhanVien = req.user.id; // lấy từ token thủ thư
  const { ly_do } = req.body;

  if (!maNhanVien) {
    return res.status(401).json({ error: "Chỉ thủ thư mới có quyền từ chối" });
  }

  const sql = "CALL RejectDatMuon(?, ?, ?)";
  db.query(sql, [maDatMuon, maNhanVien, ly_do], (err, result) => {
    if (err) {
      return res.status(400).json({ error: err.sqlMessage || err.message });
    }
    res.json({
      message: "Từ chối đơn thành công",
      ...result[0][0],
    });
  });
};
