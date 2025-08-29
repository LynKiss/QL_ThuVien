const Nhat_ky_he_thong = require("../models/nhat_ky_he_thong.model");
module.exports = {
  getAll: (req, res) => {
    Nhat_ky_he_thong.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Nhat_ky_he_thong.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const nhat_ky_he_thong = req.body;
    Nhat_ky_he_thong.insert(nhat_ky_he_thong, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const nhat_ky_he_thong = req.body;
    const id = req.params.id;
    Nhat_ky_he_thong.update(nhat_ky_he_thong, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Nhat_ky_he_thong.delete(id, (result) => {
      res.send(result);
    });
  },
};
