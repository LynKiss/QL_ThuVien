var express = require('express');
var router = express.Router();
const nha_xuat_banController = require("../controllers/nha_xuat_ban.controller");
router.get('/', nha_xuat_banController.getAll);
router.get('/:id',  nha_xuat_banController.getById);
router.post('/',  nha_xuat_banController.insert);
router.put('/:id',  nha_xuat_banController.update);
router.delete('/:id', nha_xuat_banController.delete);
module.exports = router;
