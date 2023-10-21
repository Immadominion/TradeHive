const productModel = require('./../models/productModel');

exports.homeMain = async (req, res)=>{
    const products = await productModel.find();
    res.status(200).json({status:"success", data: products})
}