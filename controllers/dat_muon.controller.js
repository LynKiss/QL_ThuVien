const Dat_muon = require("../models/dat_muon.model");
module.exports = {
  getAll: (req, res) => {
    Dat_muon.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Dat_muon.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const dat_muon = req.body;
    Dat_muon.insert(dat_muon, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const dat_muon = req.body;
    const id = req.params.id;
    Dat_muon.update(dat_muon, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Dat_muon.delete(id, (result) => {
      res.send(result);
    });
  },
};
