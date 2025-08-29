var express = require('express');
var router = express.Router();
const nha_cung_capController = require("../controllers/nha_cung_cap.controller");
router.get('/', nha_cung_capController.getAll);
router.get('/:id',  nha_cung_capController.getById);
router.post('/',  nha_cung_capController.insert);
router.put('/:id',  nha_cung_capController.update);
router.delete('/:id', nha_cung_capController.delete);
module.exports = router;
