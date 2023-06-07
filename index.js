const express = require('express')
const app = express()
const session = require('express-session')
const login = require('./routes/login.js')
const bookslot = require('./routes/slots')
const cors = require('cors')
const cookieParser = require('cookie-parser');



app.use(cors({
    origin: 'https://lottery-1rcs-oo8a2mvda-percygfx.vercel.app',
    credentials: true
}));

app.use(cookieParser());

app.use(express.urlencoded({extended: false}));
app.use(express.json());

app.use((req, res, next) => {
    const { origin } = req.headers;

    if (origin) {
        res.setHeader('Access-Control-Allow-Origin', origin);
    }
    res.setHeader('Access-Control-Allow-Credentials', 'true');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Origin, Content-Type, X-Requested-With, Accept');
    next();
});

app.use(session({
    secret: 'damnthisissosecret',
    resave: false,
    saveUninitialized: true,
}));


app.use('/', login);
app.use('/', bookslot)


const port = process.env.PORT || 3000; // Default to port 3000 if PORT environment variable is not set

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
