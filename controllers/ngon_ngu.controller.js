const Ngon_ngu = require("../models/ngon_ngu.model");
module.exports = {
  getAll: (req, res) => {
    Ngon_ngu.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Ngon_ngu.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const ngon_ngu = req.body;
    Ngon_ngu.insert(ngon_ngu, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const ngon_ngu = req.body;
    const id = req.params.id;
    Ngon_ngu.update(ngon_ngu, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Ngon_ngu.delete(id, (result) => {
      res.send(result);
    });
  },
};
