const jwt = require('jsonwebtoken')
const User = require('./../models/userModel')

//Token initialization
const signToken = id => { return jwt.sign({ id }, process.env.JWT_SECRET, {
    expiresIn: process.env.JWT_EXPIRES_IN
})
};

//Set and send token as cookie  
const createAndSendToken = (user, statusCode, res) => {
    const token = signToken(user._id);
    const cookieOptions = {
        expires: new Date(Date.now() + process.env.JWT_COOKIE_EXPIRES_IN * 24 * 60 * 60 * 1000),
        httpOnly: true
    };
    if(process.env.NODE_ENV === 'production') cookieOptions.secure = true;
        
        res.cookie('jwt', token, cookieOptions)
        user.password = undefined;
    
    res.status(statusCode).json({
        status: 'success',
        token,
        data: {
            user
        }
    })
}

exports.signup = async (req, res, next) => {
    try{
        //const newUser = await User.create(req.body)
        const newUser = await User.create({
            username: req.body.username,
            email: req.body.email, 
            password: req.body.password,
            passwordChangedAt: Date.now(),
        });
        createAndSendToken(newUser, 201, res)
        } catch (err){
            res.status(404).json({
                status: 'fail',
                message: err
            })
        }
}