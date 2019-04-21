const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
//let body = require('body-parser'); 
moment.locale('th');

router.get('/dealerlist', function (req, res) {
    db.execute('SELECT * FROM `dealer` ORDER BY dealer_id', function (err, result, field) {

        if (err) {
            throw err;
        } else {
            dealerList = {
                print: result
            }
            console.log(dealerList.print);
        }
    });
});

module.exports = router;