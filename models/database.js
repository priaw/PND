const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '',
    database: 'pnd-web-serv'
});
module.exports = connection;


//*** for NAS SERVER ***//
// const mysql = require('mysql2');

// const connection = mysql.createConnection({
//     host: 'localhost',
//     port: '3307',
//     user: 'root',
//     password: 'root',
//     database: 'pnd-web-serv'
// });

// module.exports = connection;