const Nha_cung_cap = require("../models/nha_cung_cap.model");
module.exports = {
  getAll: (req, res) => {
    Nha_cung_cap.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Nha_cung_cap.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const nha_cung_cap = req.body;
    Nha_cung_cap.insert(nha_cung_cap, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const nha_cung_cap = req.body;
    const id = req.params.id;
    Nha_cung_cap.update(nha_cung_cap, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Nha_cung_cap.delete(id, (result) => {
      res.send(result);
    });
  },
};
