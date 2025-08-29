const The_loai = require("../models/the_loai.model");
module.exports = {
  getAll: (req, res) => {
    The_loai.getAll((result) => {
      res.send(result);
    });
  },
  getById: (req, res) => {
    const id = req.params.id;
    The_loai.getById(id, (result) => {
      res.send(result);
    });
  },
  insert: (req, res) => {
    const the_loai = req.body;
    The_loai.insert(the_loai, (result) => {
      res.send(result);
    });
  },
  update: (req, res) => {
    const the_loai = req.body;
    const id = req.params.id;
    The_loai.update(the_loai, id, (result) => {
      res.send(result);
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    The_loai.delete(id, (result) => {
      res.send(result);
    });
  },
};
