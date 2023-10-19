const express = require('express')
const passport = require('passport')
const GoogleStrategy = require('passport-google-oauth20').Strategy;
const JwtStrategy = require('passport-jwt').Strategy;
const ExtractJwt = require('passport-jwt').ExtractJwt;
const jwt = require('jsonwebtoken')
const User = require('./../models/userModel')

passport.use(new GoogleStrategy({
  clientID: process.env.CLIENT_ID,
  clientSecret: process.env.CLIENT_SECRET,
  callbackURL: "http://localhost:3000/auth/google/callback"
}, async (accessToken, refreshToken, profile, cb) => {
try{
  const existingUser = await User.findOne({ googleId: profile.id }) 
         // If the user already exists, return it 
      if (existingUser) {
          return existingUser;
    } else {
      // If the user does not exist, create a new user using the profile data
        const newUser = await User.create({
        method: 'google',
        googleId: profile.id,
        email: profile.emails[0].value,
        name: profile.displayName
        // You can map other profile data here
      }); 
      return newUser;
    }
} catch(err){
    return done(err)
  }
}));


exports.redirect = (req, res, next) => {
  passport.authenticate('google', { scope: ['profile'] });
  next()
}

exports.retrieveData = (req, res, next) => {
    passport.authenticate('google', { failureRedirect: '/login', session: false }),
  function(req, res) {
    res.redirect('/')
    }
    // Successful authentication, redirect home.
}

exports.profile = () => {

}

// passport.use(new JWTStrategy({
//   jwtFromRequest: ExtractJwt.fromHeader(""),
//   secretOrKey: "secretKey"
// }))






















// const axios = require('axios')
// const querystring = require('query-string')

// async function getAccessTokenFromCode(code) {
//     const { data } = await axios.post(`https://oauth2.googleapis.com/token`, {
//       client_id: process.env.CLIENT_ID,
//       client_secret: process.env.CLIENT_SECRET,
//       redirect_uri: "http://localhost:3000/login/google",
//       grant_type: "authorization_code",
//       code,
//     });
    
//     return code, data.access_token;
//   }

//   async function getUserInfo(accesstoken) {
//     const { data } = await axios({
//       url: "https://www.googleapis.com/oauth2/v2/userinfo",
//       method: "GET",
//       headers: {
//         Authorization: `Bearer ${accesstoken}`,
//       },
//     });
//     console.log(data); // { id, email, given_name, family_name }
//     return data;
//   }

//   const queryParams = queryString.stringify({
//     client_id: process.env.CLIENT_ID, // It must correspond to what we declared earlier in the backend
//       scope: "email", // This is the user data you have access to, in our case its just the mail.
//       redirect_uri: redirectUri, // This is the uri that will be redirected to if the user signs into his google account successfully
//       auth_type: "rerequest", // This tells the consent screen to reappear if the user initially entered wrong credentials into the google modal
//       display: "popup", //It pops up the consent screen when the anchor tag is clicked
//       response_type: "code" // This tells Google to append code to the response which will be sent to the backend which exchange the code for a token
//   });

//   exports.google = async ({ body: { code } }, res) => {
//     try {
//       const google_access_token = await getAccessTokenFromCode(code),
//         { email, name } = await getUserInfo(google_access_token);
//       // Generate random password for user
//       const user = await User.create({
//           email,
//           password: "<generatedpassword>",
//           name,
//         }),
//         token = await encode(user.id);
//       console.log(token);
//       return success(res, 201)({ access_token: token, user: user.show() });
//     } catch (error) {
//       // console.log(error.response.data);
//       console.log(error.message);
//       if (error.code == "E11000") {
//         return res.status(400).json({ data: null, error: "Duplicate Email" });
//       }
  
//       return serverError(res);
//     }
//   };