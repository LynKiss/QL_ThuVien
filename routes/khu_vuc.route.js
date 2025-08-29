var express = require('express');
var router = express.Router();
const khu_vucController = require("../controllers/khu_vuc.controller");
router.get('/', khu_vucController.getAll);
router.get('/:id',  khu_vucController.getById);
router.post('/',  khu_vucController.insert);
router.put('/:id',  khu_vucController.update);
router.delete('/:id', khu_vucController.delete);
module.exports = router;
