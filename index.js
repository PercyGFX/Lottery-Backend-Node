const express = require('express')
const app = express()
const session = require('express-session')
const bodyParser = require('body-parser');
const login = require('./routes/login.js')
const bookslot = require('./routes/slots')


app.use(express.urlencoded({extended: false}));
app.use(bodyParser.json());

app.use(session({
    secret: 'damnthisissosecret',
    resave: false,
    saveUninitialized: true
}));


app.use('/', login);
app.use('/', bookslot)


app.listen(5000, () => {
    console.log('Server listening on port 5000');
});

