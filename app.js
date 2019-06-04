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
const driverRouter = require('./routes/driver');
const regisdriver = require('./routes/regisdriver');
const customerlist = require('./routes/budget');
const trucks = require('./routes/trucks');
const addtrucks = require('./routes/addtrucks');
const incomedriver = require('./routes/incomedriver');
const customerUseTruck = require('./routes/usetruck');


app.use(express.static(__dirname + '/public'));
app.use(body());

app.use(indexRouter);

//listjob
app.use(listjobsrouter);        

//customers
app.use(customerlist);          
app.use(customerUseTruck);

//drivers
app.use(regisdriver);           
app.use(driverRouter);
app.use(incomedriver);

//trucks
app.use(addtrucks);
app.use(trucks);

//GPS Tracking
app.use(trackingRouter);


//app.use(customerrouter);
app.use(regisCustomer);



// app.use(documentsRouter);
app.use(dealerRouter);
app.use(regisDealer);


app.set('view engine','ejs');

//port 
app.listen('3000', () => {
    console.log("Server start");
});