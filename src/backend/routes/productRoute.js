const express = require('express');
const multer = require('multer');
const router = express.Router();
const upload = multer();

const authController = require('./../controllers/authController')
const productController = require('./../controllers/productController');




router.post('/post', upload.array('images'), authController.protect, productController.postProduct);

module.exports = router;
