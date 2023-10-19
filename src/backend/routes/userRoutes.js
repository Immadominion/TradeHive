const express = require('express')
const router = express.Router()

const authController = require('./../controllers/authController')
const userController = require('./../controllers/userController')
<<<<<<< HEAD
=======

//router.post('/login', authController.login)
router.post('/signup', authController.signup)

//router.post('/forgotPassword', authController.forgotPassword)
//router.patch('/resetPassword/:token', authController.resetPassword)


//router.get('/google', userController.google)
//router.get('/auth/google', userController.redirect)
//router.get('/auth/google/callback', userController.retrieveData)
//router.get('/profile', userController.profile)

<<<<<<< HEAD
module.exports = router;
>>>>>>> 26e7001 (Created signup route)
=======
module.exports = router;
>>>>>>> 3f0ef5e (Created signup route)
