var express = require('express');
var router = express.Router();
const the_loaiController = require("../controllers/the_loai.controller");
router.get('/', the_loaiController.getAll);
router.get('/:id',  the_loaiController.getById);
router.post('/',  the_loaiController.insert);
router.put('/:id',  the_loaiController.update);
router.delete('/:id', the_loaiController.delete);
module.exports = router;
