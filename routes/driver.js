const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

function RegisDriver (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY listjobs.list_id', function (err, result, field) {
       
    });
}

router.get('/regisdriver', RegisDriver);
module.exports = router;