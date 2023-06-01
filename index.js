const express = require('express')
const app = express()
const session = require('express-session')
const bodyParser = require('body-parser');


app.use(express.urlencoded({extended: false}));
app.use(bodyParser.json());


app.listen(5000, () => {
    console.log('Server listening on port 5000');
});

