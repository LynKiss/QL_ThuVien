const Nha_xuat_ban = require("../models/nha_xuat_ban.model");
module.exports = {
  getAll: (req, res) => {
    Nha_xuat_ban.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Nha_xuat_ban.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const nha_xuat_ban = req.body;
    Nha_xuat_ban.insert(nha_xuat_ban, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const nha_xuat_ban = req.body;
    const id = req.params.id;
    Nha_xuat_ban.update(nha_xuat_ban, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Nha_xuat_ban.delete(id, (result) => {
      res.send(result);
    });
  },
};
