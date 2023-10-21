const jwt = require('jsonwebtoken')
const User = require('./../models/userModel')
const { promisify } = require('util')

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

exports.login = async (req, res, next) => {
    // const email = req.body.email
    // const password = req.body.password
    //USING OBJECT DESTRUCTURING
    const { email, password } = req.body
    // 1) Check if email and password exists
    if(!email || !password) {
    return res.status(400).json({
            status: 'fail',
            message: 'Please provide email and password'
        })
    
    }
    // 2) Check if user exists && password exists
    const user = await User.findOne({ email }).select('+password');

    if(!user || !(await user.correctPassword(password, user.password))){
        return res.status(401).json({
            status: 'fail',
            message: 'Incorrect email or password'
        })
    }
    
    // 3) If everything ok. send token to client 
    createAndSendToken(user, 200, res)
}

//Restricts routes to only logged in users

exports.protect = async (req, res, next) => {
    // 1) Getting token and check if its there
    let token; // token variable initially declared here due to block scope ES6
    if( req.headers.authorization && req.headers.authorization.startsWith('Bearer')){
        token = req.headers.authorization.split(' ')[1]
    }

    if(!token) {
        return next(res.status(401).json({message: "You're not logged in!. Please log in to get access"}))
    }
    // 2) Verification token 
    let decoded;
    try{
    decoded = await promisify(jwt.verify)(token, process.env.JWT_SECRET) //returns the payload which is the user's id
    console.log(decoded)
    } catch(err){
    return res.status(401).json({
            status: 'fail',
            message: ["Invalid token, Please log in", {Error: err}]
        })
    }
    
    // 3) Check if user still exists
    const currentUser = await User.findById(decoded.id)
    if(!currentUser) {
       // return next(res.json({message: ["The user belonging to this token does not exist"]}))
       return res.status(401).json({
        status:  'fail',
        message: "The user belonging to this token does not exist"
    })
}
    
    // 4) Check if user changed password after the token was issued
    // if(currentUser.changedPasswordAfter(decoded.iat)){
    //     return res.status(401).json({
    //         status: 'fail',
    //         message: "User recently changed passowrd! Please log in again!"
    //     })
    // }

    //GRANT ACCESS TO PROTECTED ROUTE
    req.user = currentUser;
    next();
}
