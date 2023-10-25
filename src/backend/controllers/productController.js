const ProductModel = require('./../models/productModel');
const admin = require('firebase-admin');

exports.postProduct = async (req, res)=>{
    const bucket = admin.storage().bucket();

    //tries to save image to firebase and database
    try{
        const {productName, description, price, school, location} = req.body;
        //const author = req.user.id;    // no access to auth yet, to be changed later

        //saves links to different photos uploaded
        const imageUrls = [];


        //handles images sent from form
        const uploadedFiles = req.files;
            
        if(!uploadedFiles || uploadedFiles.length === 0){
            res.status(400).send('No images uploaded');
        }
        
        for( const file of uploadedFiles){
            const storageDestinationPath = `images/${file.originalname}`;
            await bucket.file(storageDestinationPath).save(file.buffer, {
                contentType: file.mimetype
            });
            const uploadedFile = bucket.file(storageDestinationPath);
            const [metadata] = await uploadedFile.getMetadata();
            
            // Generate a signed URL that is valid for some years, needs changing for scaling
            const signedUrl = await uploadedFile.getSignedUrl({
                action: 'read',
                expires: '01-01-2030' // Change to an appropriate expiration date
            });

            imageUrls.push(signedUrl);

        }   

        //save product in db
        let product = new ProductModel({
            name: productName,
            author: req.user.id, //No access to auth user yet
            description: description,
            price: price,
            photo: imageUrls,
            school: school,
            location: location,
        });

        await product.save()
        res.status(200).json({status: "success", data: imageUrls})
    }catch(err){
        console.log(err)
        res.status(500).json({status: "failed" , errorMessage: err });
    }
}