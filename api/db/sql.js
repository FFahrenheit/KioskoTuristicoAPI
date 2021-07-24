const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'kioscoturistico'
});


connection.connect((err) => {
    if (err) {
        console.error('Error connecting ' + err.message);
        return;
    }

    console.log('Successfully connected to database');
});

exports.query = async (request) => {
    console.info(request);
    return new Promise((resolve, reject) => {
        connection.query(request, (err, res) => {
            if (err) {
                return reject('DB error: ' + err.message);
            }
            resolve(res);
        });
    });
}