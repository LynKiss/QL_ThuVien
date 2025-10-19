const Sach = require("../models/sach.model");

module.exports = {
  getAll: (req, res) => {
    Sach.getAll((err, result) => {
      if (err) {
        console.error("❌ Lỗi getAll:", err);
        return res
          .status(500)
          .json({ message: "Lỗi khi lấy danh sách sách", error: err.message });
      }

      if (!result || result.length === 0) {
        return res.json({ message: "Không có sách nào", data: [] });
      }

      res.json({
        message: "✅ Lấy danh sách sách thành công",
        data: result,
      });
    });
  },

  getAllFullInfo: (req, res) => {
    Sach.getAllFullInfo((err, data) => {
      if (err) {
        return res.status(500).json({ error: err.message });
      }
      if (!data || data.length === 0) {
        return res.json({ message: "Không có sách nào", data: [] });
      }
      res.json(data);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Sach.getById(id, (err, data) => {
      if (err) {
        console.error("❌ Lỗi getById:", err);
        return res
          .status(500)
          .json({ message: "Lỗi khi lấy chi tiết sách", error: err.message });
      }

      if (!data) {
        return res.status(404).json({ message: "Không tìm thấy sách" });
      }

      res.json({
        message: "✅ Lấy chi tiết sách thành công",
        data,
      });
    });
  },

  insert: (req, res) => {
    const sach = req.body;
    Sach.insert(sach, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const sach = req.body;
    const id = req.params.id;
    Sach.update(sach, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Sach.delete(id, (result) => {
      res.send(result);
    });
  },
  search: (req, res) => {
    const keyword = req.body.keyword || "";
    Sach.search(keyword, (result) => {
      res.send(result);
    });
  },
  getMostBorrowed: (req, res) => {
    const limit = parseInt(req.query.limit) || 10;
    Sach.getMostBorrowed(limit, (result) => {
      res.send(result);
    });
  },
  advancedSearch: (req, res) => {
    const params = req.body;
    Sach.advancedSearch(params, (result) => {
      res.send(result);
    });
  },
};
