const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');


function drivercommision (req, res) {
    db.execute('SELECT * FROM `listjobs` ', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            drivercommision = {
                print: result,
                moment: moment,
                page: 'date',
            }
            res.render('drivercommision', drivercommision);

        }
    });
}

router.get('/drivercommission', drivercommision);
module.exports = router;