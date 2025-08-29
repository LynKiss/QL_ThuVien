var express = require('express');
var router = express.Router();
const ngon_nguController = require("../controllers/ngon_ngu.controller");
router.get('/', ngon_nguController.getAll);
router.get('/:id',  ngon_nguController.getById);
router.post('/',  ngon_nguController.insert);
router.put('/:id',  ngon_nguController.update);
router.delete('/:id', ngon_nguController.delete);
module.exports = router;
