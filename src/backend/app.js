const express = require('express');
const multer = require('multer');



//custom imports
const userRouter = require('./routes/userRoutes');
const productRouter = require('./routes/productRoute');
const homeRouter = require('./routes/homeRoute')



////firebase requirements
const admin = require('firebase-admin');
const serviceAccount = require('./meals-d74ee-firebase-adminsdk-1l8bu-6146ea657b.json');

//app config
const app = express()
app.use(express.json())
app.use(express.urlencoded({extended:true}));//needed for the passing of request body


//multer fireBase config
const upload = multer();
admin.initializeApp({
    credential: admin.credential.cert(serviceAccount),
    storageBucket: 'gs://meals-d74ee.appspot.com'
});

const bucket = admin.storage().bucket();


//Routes
app.use('/api/v1/account', userRouter);
app.use('/api/v1/product', productRouter);
app.use('/api/v1/shop', homeRouter);

module.exports = app;