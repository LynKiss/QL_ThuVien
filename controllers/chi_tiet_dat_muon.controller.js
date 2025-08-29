const Chi_tiet_dat_muon = require("../models/chi_tiet_dat_muon.model");
module.exports = {
  getAll: (req, res) => {
    Chi_tiet_dat_muon.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Chi_tiet_dat_muon.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const chi_tiet_dat_muon = req.body;
    Chi_tiet_dat_muon.insert(chi_tiet_dat_muon, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const chi_tiet_dat_muon = req.body;
    const id = req.params.id;
    Chi_tiet_dat_muon.update(chi_tiet_dat_muon, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Chi_tiet_dat_muon.delete(id, (result) => {
      res.send(result);
    });
  },
};
