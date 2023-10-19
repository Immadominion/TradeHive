const mongoose = require('mongoose')
const validator = require('validator')
const bcrypt = require('bcryptjs')
const userSchema = new mongoose.Schema({
    username: {
        type: String, 
        required: [true, 'PLease input your username '],
        trim: true, // This removes leading and trailing white spaces
        validate: {
          validator: function(value) {
            // Use a regular expression to check if there are any white spaces
            return !/\s/.test(value);
          },
          message: 'Username must not contain white spaces.'
        }
    }, 
    email:{
        type: String, 
        required: [true, 'Please input an email address'],
        unique: true,
        lowercase: true
    },
    photo: String,
    password: {
        type: String, 
        required: [true, 'Please provide a password'],
        minlength: 8,
        select: false
    },
    passwordChangedAt: Date,
    passwordResetToken: String, 
    passwordResetExpires: Date,
})

userSchema.pre('save', async function(next){
    //Only run this function if password was actually modified
    if(!this.isModified('password')) return next();

    //Hash the password with cost of 12
    this.password =  await bcrypt.hash(this.password, 12)
    next();
});


const User = mongoose.model('User', userSchema)
    
module.exports = User