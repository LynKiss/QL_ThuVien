const Vai_tro = require("../models/vai_tro.model");
module.exports = {
  getAll: (req, res) => {
    Vai_tro.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Vai_tro.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const vai_tro = req.body;
    Vai_tro.insert(vai_tro, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const vai_tro = req.body;
    const id = req.params.id;
    Vai_tro.update(vai_tro, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Vai_tro.delete(id, (result) => {
      res.send(result);
    });
  },
};
