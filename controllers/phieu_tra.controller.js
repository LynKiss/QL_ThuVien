const Phieu_tra = require("../models/phieu_tra.model");
module.exports = {
  getAll: (req, res) => {
    Phieu_tra.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Phieu_tra.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const phieu_tra = req.body;
    Phieu_tra.insert(phieu_tra, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const phieu_tra = req.body;
    const id = req.params.id;
    Phieu_tra.update(phieu_tra, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Phieu_tra.delete(id, (result) => {
      res.send(result);
    });
  },
};
