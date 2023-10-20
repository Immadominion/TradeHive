const mongoose = require('mongoose');
const dotenv = require('dotenv');

dotenv.config({ path: './src/backend/config.env' })
const app = require('./app')

mongoose.connect(process.env.DB, {
    useNewUrlParser: true,
}).then(con => {
    //console.log(con.connections);
    console.log('DB connection successful!')
})
const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`App running on port ${port}...`)
})