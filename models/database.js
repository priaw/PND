const mysql = require('mysql2');

const database = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '',
    database: 'pnd-web-serv'
});

module.exports = database;