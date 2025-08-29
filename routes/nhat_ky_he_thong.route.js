var express = require('express');
var router = express.Router();
const nhat_ky_he_thongController = require("../controllers/nhat_ky_he_thong.controller");
router.get('/', nhat_ky_he_thongController.getAll);
router.get('/:id',  nhat_ky_he_thongController.getById);
router.post('/',  nhat_ky_he_thongController.insert);
router.put('/:id',  nhat_ky_he_thongController.update);
router.delete('/:id', nhat_ky_he_thongController.delete);
module.exports = router;
