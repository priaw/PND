const express = require('express');
const app = express();
const body = require('body-parser');                        //user method post

const documentsRouter = require('./routes/documents');
const accountingRouter = require('./routes/accounting');
const indexRouter = require('./routes/index');
const trackingRouter = require('./routes/GPStracking');

app.use(express.static(__dirname + '/public'));
app.use(body());


app.use(indexRouter);
app.use(trackingRouter);
// app.use(documentsRouter);
// app.use(accountingRouter);


app.set('view engine','ejs');

//port 
app.listen('3000', () => {
    console.log("Server start");
});