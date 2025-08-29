const Sach = require("../models/sach.model");

module.exports = {
  getAll: (req, res) => {
    Sach.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    Sach.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const sach = req.body;
    Sach.insert(sach, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const sach = req.body;
    const id = req.params.id;
    Sach.update(sach, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    Sach.delete(id, (result) => {
      res.send(result);
    });
  },
  search: (req, res) => {
    const keyword = req.body.keyword || "";
    Sach.search(keyword, (result) => {
      res.send(result);
    });
  },
  getMostBorrowed: (req, res) => {
    const limit = parseInt(req.query.limit) || 10;
    Sach.getMostBorrowed(limit, (result) => {
      res.send(result);
    });
  },
  advancedSearch: (req, res) => {
    const params = req.body;
    Sach.advancedSearch(params, (result) => {
      res.send(result);
    });
  },
};
