const TrangThaiNguoiDung = require("../models/trang_thai_nguoi_dung.model");

module.exports = {
  getAll: (req, res) => {
    TrangThaiNguoiDung.getAll((err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi server", error: err.message });
      }
      res.json(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    TrangThaiNguoiDung.getById(id, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi server", error: err.message });
      }
      if (!result) return res.status(404).json({ message: "Không tìm thấy trạng thái" });
      res.json(result);
    });
  },

  insert: (req, res) => {
    const trang_thai = req.body;
    if (!trang_thai.ten_trang_thai) {
      return res.status(400).json({ message: "Tên trạng thái là bắt buộc" });
    }
    TrangThaiNguoiDung.insert(trang_thai, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi khi thêm trạng thái", error: err.message });
      }
      res.status(201).json(result);
    });
  },

  update: (req, res) => {
    const id = req.params.id;
    const trang_thai = req.body;
    if (!trang_thai.ten_trang_thai) {
      return res.status(400).json({ message: "Tên trạng thái là bắt buộc" });
    }
    TrangThaiNguoiDung.update(id, trang_thai, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi khi cập nhật trạng thái", error: err.message });
      }
      if (!result) return res.status(404).json({ message: "Không tìm thấy trạng thái" });
      res.json({ message: "Cập nhật thành công", data: result });
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    TrangThaiNguoiDung.delete(id, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi khi xóa trạng thái", error: err.message });
      }
      if (!result) return res.status(404).json({ message: "Không tìm thấy trạng thái" });
      res.json({ message: "Xóa thành công" });
    });
  },
};
