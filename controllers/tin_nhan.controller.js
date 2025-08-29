const Tin_nhan = require("../models/tin_nhan.model");
module.exports = {
  getAll: (req, res) => {
    Tin_nhan.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Tin_nhan.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const tin_nhan = req.body;
    Tin_nhan.insert(tin_nhan, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const tin_nhan = req.body;
    const id = req.params.id;
    Tin_nhan.update(tin_nhan, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Tin_nhan.delete(id, (result) => {
      res.send(result);
    });
  },
};
