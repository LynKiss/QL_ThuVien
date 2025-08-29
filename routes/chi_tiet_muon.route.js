var express = require('express');
var router = express.Router();
const chi_tiet_muonController = require("../controllers/chi_tiet_muon.controller");
router.get('/', chi_tiet_muonController.getAll);
router.get('/:id',  chi_tiet_muonController.getById);
router.post('/',  chi_tiet_muonController.insert);
router.put('/:id',  chi_tiet_muonController.update);
router.delete('/:id', chi_tiet_muonController.delete);
module.exports = router;
