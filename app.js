const express = require('express');
const body = require('body-parser');  //user method post
const mysql = require('mysql2');
const app = express();



app.use(body());
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

//adddata jobs
app.post('/addjobs',(req, res)=>{  
    let data = {
        name    : req.body.fname,
        sorce   : req.body.Sorce,
        des     : req.body.Des,
        type    : req.body.type ,
        price   : req.body.Price
    }
    //console.log(data);
   /* let sql = "INSERT INTO listjobs
    VALUES (data.name, data.sorce, data.des, data.type, data.pricr, data.ETC);";
    db.query(sql, (err, result) => {
        if(err) throw err;
        console.log(result);
        res.send('Add jobs')
    });*/
    //res.redirect('listjobs');  //redirect page

    res.end("<h1>"+ data.name + "<br>" + data.sorce + "<br>" + data.des +"<br>" + data.type + "<br>" +  data.price + "</h1>");
    
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

app.get('/tracking',function(req, res){
    res.send('tracking');
});

//port 
app.listen('3000', () => {
    console.log("Server start");
});