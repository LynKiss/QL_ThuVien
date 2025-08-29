var express = require('express');
var router = express.Router();
const dat_muonController = require("../controllers/dat_muon.controller");
router.get('/', dat_muonController.getAll);
router.get('/:id',  dat_muonController.getById);
router.post('/',  dat_muonController.insert);
router.put('/:id',  dat_muonController.update);
router.delete('/:id', dat_muonController.delete);
module.exports = router;
