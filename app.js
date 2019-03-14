const express = require('express');
const mysql = require('mysql2');
const app = express();

//create connection
/*const db = mysql.createConnection({
    host: 'localhost',
    // port: '3306',
    user: 'root',
    password: 'root',
    database: 'pnd-web-serv'
});
module.exports = db;

//Connect
db.connect(() => {
    if(err){
        throw err;
    }
    console.log('Mysql Connect');
})*/

//views ejs
app.set('view engine','ejs');


/*app.get('/createdb',(req, res) => {
    let sql = "CREATE DATABASE nodemysql";
    db.query(sql, (err, result) => {
        if(err) throw err;
        console.log(result);
        res.send('Databsae create')
    });
});*/

//path
app.get('/',function(req, res){
    //var data = {name:"EIEI", age:23, job:"Pro"};

    res.render('home');
});
app.get('/listjob',function(req, res){
    //query data
    res.render('listjob');
});
app.get('/payment',function(req, res){
    //query data
    res.render('payment');
});
app.get('/listpayment',function(req, res){
    //query data
    res.render('listpayment');
});
app.get('/salary',function(req, res){
    //query data
    res.render('salary');
});
app.get('/listcash_customer',function(req, res){
    //query data
    res.render('listcash_customer');
});
app.get('/detail_account',function(req, res){
    //query data
    res.render('detail_account');
});
app.get('/invoice',function(req, res){
    //query data
    res.render('invoice');
});
app.get('/bill',function(req, res){
    //query data
    res.render('bill');
});
app.get('/commission',function(req, res){
    res.render('commission');
});
app.get('/register',function(req, res){
    res.render('register');
});


//port 
app.listen('3000', () => {
    console.log("Server start");
});