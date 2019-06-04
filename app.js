const express = require('express');
const app = express();
const body = require('body-parser');                        //user method post


const documentsRouter = require('./routes/documents');
const dealerRouter = require('./routes/dealer');
const regisDealer = require('./routes/regisdealer');
const indexRouter = require('./routes/index');
const listjobsrouter = require('./routes/listjobs');
//const customerrouter = require('./routes/customer');
const regisCustomer = require('./routes/regiscustomer');
const trackingRouter = require('./routes/GPStracking');
const PDFRouter = require('./routes/pdf');
const driverRouter = require('./routes/driver');
const regisdriver = require('./routes/regisdriver');
const customerlist = require('./routes/budget');
const trucks = require('./routes/trucks');
const addtrucks = require('./routes/addtrucks');
const incomedriver = require('./routes/incomedriver');
const usetruck = require('./routes/usetruck');
const PDF = require('.routes/pdf');

app.use(express.static(__dirname + '/public'));
app.use(body());

app.use(incomedriver);
app.use(PDF);
app.use(usetruck);
app.use(addtrucks);
app.use(trucks);
app.use(indexRouter);
app.use(trackingRouter);
app.use(listjobsrouter);
app.use(customerlist);
//app.use(customerrouter);
app.use(regisCustomer);
app.use(PDFRouter);
app.use(driverRouter);
app.use(regisdriver);
// app.use(documentsRouter);
app.use(dealerRouter);
app.use(regisDealer);


app.set('view engine','ejs');

//port 
app.listen('3000', () => {
    console.log("Server start");
});