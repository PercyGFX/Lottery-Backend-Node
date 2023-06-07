const mysql = require('mysql2');




const connection = mysql.createConnection({
    host: 'sql12.freesqldatabase.com',
    user: 'sql12624268',
    database: 'sql12624268',
    password: 'T8qrmscbTg'
});

connection.connect((err) => {
    if (err) {
        console.error('Error connecting to database:', err);
        return;
    }

    console.log('Connected to database');
});


module.exports = connection