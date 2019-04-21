const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

router.get('/listjobs-date', function (req, res) {
    db.execute('SELECT * FROM `customer` ORDER BY customer.cust_id', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            customerList = {
                print: result
            }
            console.log(customerList.print);
        }
    });
});
module.exports = router;