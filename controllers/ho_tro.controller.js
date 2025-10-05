const HoTro = require("../models/ho_tro.model");

// 📌 User gửi ticket hỗ trợ
exports.create = (req, res) => {
  const ticket = {
    ma_nguoi_dung: req.user.id, // ✅ lấy id từ token
    tieu_de: req.body.tieu_de,
    noi_dung: req.body.noi_dung,
  };

  HoTro.create(ticket, (err, data) => {
    if (err) return res.status(500).json({ error: err });
    res.json(data);
  });
};

// 📌 User xem tất cả ticket của mình (có phản hồi)
exports.getMyTickets = (req, res) => {
  const userId = req.user.id; // ✅ id từ token
  HoTro.getByUser(userId, async (err, tickets) => {
    if (err) return res.status(500).json({ error: err });

    // lấy phản hồi kèm theo
    const promises = tickets.map((ticket) => {
      return new Promise((resolve) => {
        HoTro.getRepliesByTicket(ticket.id, (err, replies) => {
          if (err) return resolve({ ...ticket, replies: [] });
          resolve({ ...ticket, replies });
        });
      });
    });

    const result = await Promise.all(promises);
    res.json(result);
  });
};

// 📌 User xem chi tiết 1 ticket (có phản hồi)
exports.getById = (req, res) => {
  const id = req.params.id;

  HoTro.getById(id, (err, ticket) => {
    if (err) return res.status(500).json({ error: err });
    if (!ticket)
      return res.status(404).json({ message: "Không tìm thấy ticket" });

    HoTro.getRepliesByTicket(id, (err, replies) => {
      if (err) return res.status(500).json({ error: err });
      res.json({ ...ticket, replies });
    });
  });
};

// 📌 Admin xem tất cả ticket (có phản hồi)
exports.getAll = (req, res) => {
  HoTro.getAll(async (err, tickets) => {
    if (err) return res.status(500).json({ error: err });

    const promises = tickets.map((ticket) => {
      return new Promise((resolve) => {
        HoTro.getRepliesByTicket(ticket.id, (err, replies) => {
          if (err) return resolve({ ...ticket, replies: [] });
          resolve({ ...ticket, replies });
        });
      });
    });

    const result = await Promise.all(promises);
    res.json(result);
  });
};

// 📌 Admin cập nhật trạng thái ticket
exports.updateStatus = (req, res) => {
  const id = req.params.id;
  const { trang_thai } = req.body;

  HoTro.updateStatus(id, trang_thai, (err, data) => {
    if (err) return res.status(500).json({ error: err });
    res.json(data);
  });
};

// 📌 Admin thêm phản hồi vào ticket
// 📌 Bất kỳ user nào (user hoặc admin) đều có thể thêm phản hồi
exports.addReply = (req, res) => {
  const reply = {
    ho_tro_id: req.params.id,
    ma_nguoi_dung: req.user.id, // user hoặc admin đều được
    noi_dung: req.body.noi_dung,
  };

  HoTro.addReply(reply, (err, data) => {
    if (err) return res.status(500).json({ error: err });
    res.json(data);
  });
};
