const Phieu_muon = require("../models/phieu_muon.model");
module.exports = {
  getAll: (req, res) => {
    Phieu_muon.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Phieu_muon.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const phieu_muon = req.body;
    Phieu_muon.insert(phieu_muon, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const phieu_muon = req.body;
    const id = req.params.id;
    Phieu_muon.update(phieu_muon, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Phieu_muon.delete(id, (result) => {
      res.send(result);
    });
  },
};
