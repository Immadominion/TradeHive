const express = require('express');
const multer = require('multer');
const router = express.Router();
const upload = multer();

const productController = require('./../controllers/productController');




router.post('/post', upload.array('images'),  productController.postProduct);

module.exports = router;
