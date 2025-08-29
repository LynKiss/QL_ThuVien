var express = require('express');
var router = express.Router();
const tin_nhanController = require("../controllers/tin_nhan.controller");
router.get('/', tin_nhanController.getAll);
router.get('/:id',  tin_nhanController.getById);
router.post('/',  tin_nhanController.insert);
router.put('/:id',  tin_nhanController.update);
router.delete('/:id', tin_nhanController.delete);
module.exports = router;
