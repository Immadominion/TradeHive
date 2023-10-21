const mongoose = require('mongoose');


const productSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    author: {
        type: String,
        required: true,
    },
    description: {
        type: String,
        required: true,
    },
    price: {
        type: String,
        required: true,
    },
    photo: {
        type: [Array],
    },
    school: {
        type: String,
        required: true
    },
    location : {
        type: String,
        required: true
    }

}, {timestamps: true})

module.exports = mongoose.model("Product", productSchema);