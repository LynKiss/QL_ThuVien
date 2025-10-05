const db = require("../common/db");

// ---------------------- Ticket hỗ trợ ----------------------
const HoTro = {};

// 📌 Tạo mới ticket
HoTro.create = (ticket, callback) => {
  const sql = `
    INSERT INTO ho_tro (ma_nguoi_dung, tieu_de, noi_dung, trang_thai) 
    VALUES (?, ?, ?, ?)
  `;
  db.query(
    sql,
    [
      ticket.ma_nguoi_dung,
      ticket.tieu_de,
      ticket.noi_dung,
      ticket.trang_thai || "Chưa xử lý",
    ],
    (err, res) => {
      if (err) return callback(err);
      callback(null, { id: res.insertId, ...ticket });
    }
  );
};

// 📌 Lấy tất cả ticket (cho admin)
HoTro.getAll = (callback) => {
  const sql = `
    SELECT h.*, u.ho_ten AS ten_nguoi_gui
    FROM ho_tro h
    JOIN nguoi_dung u ON h.ma_nguoi_dung = u.ma_nguoi_dung
    ORDER BY h.ngay_tao DESC
  `;
  db.query(sql, (err, res) => {
    if (err) return callback(err);
    callback(null, res);
  });
};

// 📌 Lấy tất cả ticket của 1 user
HoTro.getByUser = (ma_nguoi_dung, callback) => {
  const sql = `
    SELECT h.*, u.ho_ten AS ten_nguoi_gui
    FROM ho_tro h
    JOIN nguoi_dung u ON h.ma_nguoi_dung = u.ma_nguoi_dung
    WHERE h.ma_nguoi_dung = ?
    ORDER BY h.ngay_tao DESC
  `;
  db.query(sql, [ma_nguoi_dung], (err, res) => {
    if (err) return callback(err);
    callback(null, res);
  });
};

// 📌 Lấy chi tiết 1 ticket (kèm thông tin người gửi)
HoTro.getById = (id, callback) => {
  const sql = `
    SELECT h.*, u.ho_ten AS ten_nguoi_gui
    FROM ho_tro h
    JOIN nguoi_dung u ON h.ma_nguoi_dung = u.ma_nguoi_dung
    WHERE h.id = ?
  `;
  db.query(sql, [id], (err, res) => {
    if (err) return callback(err);
    callback(null, res[0]); // chỉ trả về 1 record
  });
};

// 📌 Update trạng thái (admin dùng)
HoTro.updateStatus = (id, trang_thai, callback) => {
  db.query(
    "UPDATE ho_tro SET trang_thai = ? WHERE id = ?",
    [trang_thai, id],
    (err) => {
      if (err) return callback(err);
      callback(null, { message: "Cập nhật trạng thái thành công" });
    }
  );
};

// ---------------------- Phản hồi ----------------------

// 📌 Thêm phản hồi mới (dùng cho cả user & admin)
HoTro.addReply = (reply, callback) => {
  const sql = `
    INSERT INTO ho_tro_phan_hoi (ho_tro_id, ma_nguoi_dung, noi_dung) 
    VALUES (?, ?, ?)
  `;
  db.query(
    sql,
    [reply.ho_tro_id, reply.ma_nguoi_dung, reply.noi_dung],
    (err, res) => {
      if (err) return callback(err);

      // Sau khi thêm phản hồi, nếu là admin → thêm notification cho user
      if (reply.isAdmin && reply.userTicketId) {
        const notifySql = `
          INSERT INTO notification (ma_nguoi_dung, noi_dung) VALUES (?, ?)
        `;
        const message = `Admin đã phản hồi ticket của bạn: "${reply.ticketTitle}"`;
        db.query(notifySql, [reply.userTicketId, message], (err2) => {
          if (err2) console.error("Lỗi tạo notification:", err2);
        });
      }

      callback(null, { id: res.insertId, ...reply });
    }
  );
};

// 📌 Lấy tất cả phản hồi của 1 ticket
HoTro.getRepliesByTicket = (ho_tro_id, callback) => {
  const sql = `
    SELECT r.id, r.noi_dung, r.ngay_tao, u.ho_ten AS nguoi_tra_loi
    FROM ho_tro_phan_hoi r
    JOIN nguoi_dung u ON r.ma_nguoi_dung = u.ma_nguoi_dung
    WHERE r.ho_tro_id = ?
    ORDER BY r.ngay_tao ASC
  `;
  db.query(sql, [ho_tro_id], (err, res) => {
    if (err) return callback(err);
    callback(null, res);
  });
};

module.exports = HoTro;
