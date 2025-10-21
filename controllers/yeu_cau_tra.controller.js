const YeuCauTra = require("../models/yeu_cau_tra.model");

module.exports = {
  getAll: (req, res) => {
    YeuCauTra.getAll((err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi server", error: err.message });
      }
      res.json(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    YeuCauTra.getById(id, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi server", error: err.message });
      }
      if (!result) return res.status(404).json({ message: "Không tìm thấy yêu cầu trả" });
      res.json(result);
    });
  },

  getByPhieuMuon: (req, res) => {
    const ma_phieu_muon = req.params.ma_phieu_muon;
    YeuCauTra.getByPhieuMuon(ma_phieu_muon, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi server", error: err.message });
      }
      res.json(result);
    });
  },

  insert: (req, res) => {
    const yeu_cau = req.body;
    if (!yeu_cau.ma_phieu_muon || !yeu_cau.ma_doc_gia) {
      return res.status(400).json({ message: "Mã phiếu mượn và mã độc giả là bắt buộc" });
    }
    YeuCauTra.insert(yeu_cau, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi khi thêm yêu cầu trả", error: err.message });
      }
      res.status(201).json(result);
    });
  },

  update: (req, res) => {
    const id = req.params.id;
    const yeu_cau = req.body;
    if (!yeu_cau.ma_phieu_muon || !yeu_cau.ma_doc_gia) {
      return res.status(400).json({ message: "Mã phiếu mượn và mã độc giả là bắt buộc" });
    }
    YeuCauTra.update(id, yeu_cau, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi khi cập nhật yêu cầu trả", error: err.message });
      }
      if (!result) return res.status(404).json({ message: "Không tìm thấy yêu cầu trả" });
      res.json({ message: "Cập nhật thành công", data: result });
    });
  },

  updateTrangThai: (req, res) => {
    const id = req.params.id;
    const { trang_thai } = req.body;
    if (!trang_thai || !['cho_xac_nhan', 'da_xac_nhan', 'huy'].includes(trang_thai)) {
      return res.status(400).json({ message: "Trạng thái không hợp lệ" });
    }
    YeuCauTra.updateTrangThai(id, trang_thai, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi khi cập nhật trạng thái", error: err.message });
      }
      if (!result) return res.status(404).json({ message: "Không tìm thấy yêu cầu trả" });
      res.json({ message: "Cập nhật trạng thái thành công" });
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    YeuCauTra.delete(id, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ message: "Lỗi khi xóa yêu cầu trả", error: err.message });
      }
      if (!result) return res.status(404).json({ message: "Không tìm thấy yêu cầu trả" });
      res.json({ message: "Xóa thành công" });
    });
  },
};
