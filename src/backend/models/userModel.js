const mongoose = require('mongoose')
const validator = require('validator')
const bcrypt = require('bcryptjs')

const userSchema = new mongoose.Schema({
    username: {
        type: String, 
        required: [true, 'PLease input your username '],
        unique: true,
         // This removes leading and trailing white spaces
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
        required: [true, 'Please input a new email address'],
        lowercase: true,
        unique: true
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

//Compares incoming and existing password
userSchema.methods.correctPassword = async function(candidatePassword, userPassword){
    return await bcrypt.compare(candidatePassword, userPassword)
};



const User = mongoose.model('User', userSchema)
    
module.exports = User