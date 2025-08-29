const Danh_muc = require("../models/danh_muc.model");
module.exports = {
  getAll: (req, res) => {
    Danh_muc.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Danh_muc.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const danh_muc = req.body;
    Danh_muc.insert(danh_muc, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const danh_muc = req.body;
    const id = req.params.id;
    Danh_muc.update(danh_muc, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Danh_muc.delete(id, (result) => {
      res.send(result);
    });
  },
};
