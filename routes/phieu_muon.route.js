var express = require('express');
var router = express.Router();
const phieu_muonController = require("../controllers/phieu_muon.controller");
router.get('/', phieu_muonController.getAll);
router.get('/:id',  phieu_muonController.getById);
router.post('/',  phieu_muonController.insert);
router.put('/:id',  phieu_muonController.update);
router.delete('/:id', phieu_muonController.delete);
module.exports = router;
