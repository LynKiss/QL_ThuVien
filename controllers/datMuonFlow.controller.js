const db = require("../common/db");

// =================== ĐẶT MƯỢN ===================
exports.datMuon = (req, res) => {
  const userId = req.user?.id; // Lấy từ JWT
  if (!userId) return res.status(401).json({ error: "Chưa đăng nhập" });

  const { ngay_du_kien_muon, ghi_chu, chi_tiet } = req.body;

  if (!chi_tiet || !Array.isArray(chi_tiet) || chi_tiet.length === 0) {
    return res.status(400).json({ error: "Danh sách sách mượn không hợp lệ" });
  }

  const today = new Date().toISOString().slice(0, 10);

  db.getConnection((err, connection) => {
    if (err) return res.status(500).json({ error: err.message });

    // 🔹 B0: Check điều kiện mượn
    connection.query(
      "CALL CheckDieuKienMuonSach(?)",
      [userId],
      (err, checkResult) => {
        if (err) {
          connection.release();
          return res.status(400).json({ error: err.sqlMessage || err.message });
        }

        const checkRow = checkResult[0][0];
        if (checkRow.status === "ERROR") {
          connection.release();
          return res.status(400).json({ error: checkRow.message });
        }

        // 🔹 B1: Transaction tạo đơn đặt mượn
        connection.beginTransaction((err) => {
          if (err) {
            connection.release();
            return res.status(500).json({ error: err.message });
          }

          const sqlDatMuon = "CALL InsertDatMuon(?, ?, ?, ?, ?)";
          const paramsDatMuon = [
            userId,
            today,
            ngay_du_kien_muon || null, // p_ngay_du_kien_muon
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

            let maDatMuon;
            try {
              maDatMuon = result[0][0].ma_dat_muon;
            } catch (e) {
              return connection.rollback(() => {
                connection.release();
                res.status(500).json({ error: "Không lấy được mã đặt mượn" });
              });
            }

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
                  res
                    .status(400)
                    .json({ error: err.sqlMessage || err.message });
                });
              });
          });
        });
      }
    );
  });
};

// Thủ thư duyệt đơn
exports.approveDatMuon = (req, res) => {
  const maDatMuon = req.params.id;
  const maNhanVien = req.user?.id;

  if (!maNhanVien) {
    return res.status(401).json({ error: "Chỉ thủ thư mới có quyền duyệt" });
  }

  const sql = "CALL ApproveDatMuon(?, ?)";
  db.query(sql, [maDatMuon, maNhanVien], (err, result) => {
    if (err) {
      return res.status(400).json({ error: err.sqlMessage || err.message });
    }
    res.json({
      message: "Duyệt đơn thành công",
      ma_phieu_muon: result[0][0].ma_phieu_muon,
    });
  });
};

// Thủ thư từ chối đơn
exports.rejectDatMuon = (req, res) => {
  const maDatMuon = req.params.id;
  const maNhanVien = req.user?.id;
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

// =================== TRẢ SÁCH ===================

// Độc giả gửi yêu cầu trả
exports.requestTraSach = (req, res) => {
  const userId = req.user?.id;
  const { ma_phieu_muon } = req.body;

  if (!userId) return res.status(401).json({ error: "Chưa đăng nhập" });
  if (!ma_phieu_muon)
    return res.status(400).json({ error: "Thiếu mã phiếu mượn" });

  const sql = "CALL RequestTraSach(?, ?)";
  db.query(sql, [ma_phieu_muon, userId], (err, result) => {
    if (err)
      return res.status(400).json({ error: err.sqlMessage || err.message });

    res.status(201).json({
      message: "Đã gửi yêu cầu trả sách. Vui lòng mang sách đến thư viện.",
      ma_yeu_cau: result[0][0].ma_yeu_cau,
    });
  });
};

// Thủ thư xác nhận trả + chi tiết
exports.confirmTraSachChiTiet = (req, res) => {
  const maNhanVien = req.user?.id;
  const { ma_yeu_cau, ghi_chu, chi_tiet } = req.body;

  if (!maNhanVien)
    return res.status(401).json({ error: "Chỉ thủ thư mới có quyền xác nhận" });
  if (!ma_yeu_cau || !Array.isArray(chi_tiet) || chi_tiet.length === 0) {
    return res.status(400).json({ error: "Thiếu dữ liệu" });
  }

  const sql = "CALL ConfirmTraSachChiTietFull(?, ?, ?, ?)";
  db.query(
    sql,
    [ma_yeu_cau, maNhanVien, ghi_chu || null, JSON.stringify(chi_tiet)],
    (err, result) => {
      if (err)
        return res.status(400).json({ error: err.sqlMessage || err.message });

      res.json({
        message: "Xác nhận trả sách thành công",
        ma_phieu_tra: result[0][0].ma_phieu_tra,
        tien_phat: result[0][0].tien_phat || 0,
      });
    }
  );
};

// =================== GIA HẠN ===================

// Thủ thư gia hạn phiếu mượn
exports.giaHanPhieuMuon = (req, res) => {
  const maNhanVien = req.user?.id;
  const { ma_phieu_muon, so_ngay } = req.body;

  if (!maNhanVien) {
    return res.status(401).json({ error: "Chỉ thủ thư mới có quyền gia hạn" });
  }
  if (!ma_phieu_muon || !so_ngay || so_ngay <= 0) {
    return res.status(400).json({ error: "Thông tin gia hạn không hợp lệ" });
  }

  // 🔹 Check điều kiện trước khi gia hạn
  db.query(
    "CALL CheckDieuKienMuonSach(?)",
    [maNhanVien],
    (err, checkResult) => {
      if (err)
        return res.status(400).json({ error: err.sqlMessage || err.message });

      const checkRow = checkResult[0][0];
      if (checkRow.status === "ERROR") {
        return res.status(400).json({ error: checkRow.message });
      }

      const sql = "CALL GiaHanPhieuMuon(?, ?, ?)";
      db.query(sql, [ma_phieu_muon, so_ngay, maNhanVien], (err, result) => {
        if (err)
          return res.status(400).json({ error: err.sqlMessage || err.message });

        res.json({
          message: "Gia hạn thành công",
          ma_gia_han: result[0][0].ma_gia_han,
        });
      });
    }
  );
};
