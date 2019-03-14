const express = require('express');
const mysql = require('mysql2');

//create connection
const db = mysql.createConnection({
    host        : 'localhost',
    user        : 'root',
    password    : '',
    database    : 'DB'
});


const app = express();


//views ejs
app.set('view engine','ejs');

//path
app.get('/',function(req, res){
    var data = {name:"EIEI", age:23, job:"Pro"};

    res.render('profile', {user:data});
});
app.get('/contact',function(req, res){
    res.render('contact');
});
app.get('/data',function(req, res){
    res.render('data');
});


//port 
app.listen('3000', () => {
    console.log("Server start");
});