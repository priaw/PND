const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

router.get('/listjobs-all', function (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.id JOIN dealer ON listjobs.dealer = dealer.id JOIN driver ON listjobs.driver = driver.id', function (err, result) {

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
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.id JOIN dealer ON listjobs.dealer = dealer.id JOIN driver ON listjobs.driver = driver.id ORDER BY customer.id', function (err, result) {

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
router.get('/listjobs-date', function (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.id JOIN dealer ON listjobs.dealer = dealer.id JOIN driver ON listjobs.driver = driver.id ORDER BY listjobs.date ASC', function (err, result) {

        if (err) {
            throw err;
        } else {
            listjob = {
                print: result,
                moment: moment,
                page: 'date',
            };

            res.render('listjobs', listjob);
        }
    });
});
router.get('/listjobs-truck', function (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.id JOIN dealer ON listjobs.dealer = dealer.id JOIN driver ON listjobs.driver = driver.id ORDER BY driver.id', function (err, result) {

        if (err) {
            throw err;
        } else {
            listjob = {
                print: result,
                moment: moment,
                page: 'truck'


            };

            res.render('listjobs', listjob);
        }
    });
});
router.get('/listjobs-driver', function (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.id JOIN dealer ON listjobs.dealer = dealer.id JOIN driver ON listjobs.driver = driver.id ORDER BY driver.id', function (err, result) {

        if (err) {
            throw err;
        } else {
            listjob = {
                print: result,
                moment: moment,
                page: 'driver',

            };

            res.render('listjobs', listjob);
        }
    });
});
module.exports = router;