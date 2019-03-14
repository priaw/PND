var express = require('express');
var app = express();


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
app.listen(8081);