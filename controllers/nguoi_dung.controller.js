const Nguoi_dung = require("../models/nguoi_dung.model");

module.exports = {
  getAll: (req, res) => {
    Nguoi_dung.getAll((result) => {
      res.send(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    Nguoi_dung.getById(id, (result) => {
      res.send(result);
    });
  },

  insert: (req, res) => {
    const nguoi_dung = req.body;
    Nguoi_dung.insert(nguoi_dung, (result) => {
      res.send(result);
    });
  },

  update: (req, res) => {
    const nguoi_dung = req.body;
    const id = req.params.id;
    const userRole = req.user ? req.user.ma_vai_tro : null;

    if (userRole !== 1) {
      const allowedFields = [
        "ho_ten",
        "email",
        "mat_khau",
        "ngay_sinh",
        "dia_chi",
        "so_dien_thoai",
      ];
      const invalidFields = Object.keys(nguoi_dung).filter(
        (field) => !allowedFields.includes(field)
      );
      if (invalidFields.length > 0) {
        return res.status(403).json({
          message:
            "Bạn không có quyền thay đổi các trường: " +
            invalidFields.join(", "),
        });
      }
    }

    Nguoi_dung.update(nguoi_dung, id, (result) => {
      res.send(result);
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    Nguoi_dung.delete(id, (result) => {
      res.send(result);
    });
  },

  search: (req, res) => {
    const keyword = req.body.keyword;
    Nguoi_dung.search(keyword, (result) => {
      res.send(result);
    });
  },

  advancedSearch: (req, res) => {
    const params = req.body;
    Nguoi_dung.advancedSearch(params, (result) => {
      res.send(result);
    });
  },
};
