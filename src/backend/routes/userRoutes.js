const express = require('express')
const router = express.Router()

const authController = require('./../controllers/authController')
const userController = require('./../controllers/userController')

router.post('/login', authController.login)
router.post('/signup', authController.signup)
router.get('/profile', authController.protect, userController.profile)

//router.post('/forgotPassword', authController.forgotPassword)
//router.patch('/resetPassword/:token', authController.resetPassword)


//router.get('/google', userController.google)
//router.get('/auth/google', userController.redirect)
//router.get('/auth/google/callback', userController.retrieveData)
//router.get('/profile', userController.profile)

module.exports = router;

