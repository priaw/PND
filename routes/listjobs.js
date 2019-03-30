const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

router.get('/listjobs', function (req, res) {
    db.execute('SELECT * FROM `list-jobs`', function (err, result) {

        if (err) {
            throw err;
        } else {
            listjob = {
                print: result,
                moment: moment,
                page: 'all'

            };

            res.render('listjobs', listjob);
        }
    });
});

router.get('/listjobs-customer', function (req, res) {
    db.execute('SELECT * FROM `list-jobs` WHERE customer = 2', function (err, result) {

        if (err) {
            throw err;
        } else {
            listjob = {
                print: result,
                moment: moment,
                page: 'customer'

            };

            res.render('listjobs', listjob);
        }
    });
});
module.exports = router;