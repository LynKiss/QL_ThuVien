var express = require('express');
var router = express.Router();
const phieu_traController = require("../controllers/phieu_tra.controller");
router.get('/', phieu_traController.getAll);
router.get('/:id',  phieu_traController.getById);
router.post('/',  phieu_traController.insert);
router.put('/:id',  phieu_traController.update);
router.delete('/:id', phieu_traController.delete);
module.exports = router;
