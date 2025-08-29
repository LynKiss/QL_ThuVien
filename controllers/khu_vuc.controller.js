const Khu_vuc = require("../models/khu_vuc.model");
module.exports = {
  getAll: (req, res) => {
    Khu_vuc.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Khu_vuc.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const khu_vuc = req.body;
    Khu_vuc.insert(khu_vuc, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const khu_vuc = req.body;
    const id = req.params.id;
    Khu_vuc.update(khu_vuc, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Khu_vuc.delete(id, (result) => {
      res.send(result);
    });
  },
};
