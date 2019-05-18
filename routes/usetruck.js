const express = require('express');
const router = express.Router();
const db = require('../models/database');

const moment = require('moment');
moment.locale('th');

function usetruck (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY listjobs.list_id', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            usetruck = {
                print: result,
                moment: moment,
                page: 'date',
            }
            res.render('usetruck', usetruck);

        }
    });
}





router.get('/usetruck', usetruck);

module.exports = router;