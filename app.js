const express = require('express');
const app = express();
const body = require('body-parser');                        //user method post

app.use(express.static(__dirname + '/public'));
app.use(body());

const db = require('./models/database');                 //ตั้งค่าใน models/database.js
//const listjobs = require('./models/listjobs');    

//var listjobs = require('./models/listjobs');

db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to database');
});

db.connect();


//views ejs
app.set('view engine','ejs');


app.get('/',function(req, res){
    //var data = {name:"EIEI", age:23, job:"Pro"};
    res.render('home');
});

app.get('/listjob',function(req, res){
    let sql = "SELECT * FROM `list-jobs`";
    let listjobs = db.query(sql, (err, result) => {
        if(err) throw err;

        console.log(result);  
        //res.end(JSON.stringify(listjobs));
    });
    res.render('listjob',(req, res) => {
        //res.end("<h1>" + TextRow.id + "<br>" + TextRow.date + "</br>"+ TextRow.source + "</h1>");
    });
});

app.post('/addjobs',(req, res)=>{  
    let data = {
        name    : req.body.fname,
        sorce   : req.body.Sorce,
        des     : req.body.Des,
        type    : req.body.type ,
        price   : req.body.Price
    }
    //console.log(data);
    /*let sql = "SELECT * FROM listjobs"
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