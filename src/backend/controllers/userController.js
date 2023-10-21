const express = require('express')
const User = require('./../models/userModel')

exports.profile = async (req, res, next) => {
  const user = await User.findById(req.user.id).select('username email -_id')
  res.status(200).json({
    status: 'success',
    data: user
  })
}

exports.updateMe = async (req, res, next) => {
  if (req.body.password || req.body.passwordConfirm) {
    return (res.status(401).json("This route is not for password updates. Please /updateMyPassword route"))
}
  if (req.body.email || req.body._id){
    return (res.status(401).json("Email cannot be changed once created"))
  }

}