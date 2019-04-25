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


app.use(express.static(__dirname + '/public'));
app.use(body());


app.use(indexRouter);
app.use(trackingRouter);
app.use(listjobsrouter);
//app.use(customerrouter);
app.use(regisCustomer);
app.use(PDFRouter);
app.use(driverRouter);
// app.use(documentsRouter);
app.use(dealerRouter);
app.use(regisDealer);


app.set('view engine','ejs');

//port 
app.listen('3000', () => {
    console.log("Server start");
});