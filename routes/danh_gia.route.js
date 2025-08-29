var express = require('express');
var router = express.Router();
const danh_giaController = require("../controllers/danh_gia.controller");
router.get('/', danh_giaController.getAll);
router.get('/:id',  danh_giaController.getById);
router.post('/',  danh_giaController.insert);
router.put('/:id',  danh_giaController.update);
router.delete('/:id', danh_giaController.delete);
module.exports = router;
