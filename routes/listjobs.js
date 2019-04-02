const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');
const something = `listjobs`

router.get('/listjobs-result', function (req, res) {
    db.execute('SSELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id', function (err, result) {

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

router.get('/listjobs-all', function (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY listjobs.list_id', function (err, result) {

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
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY customer.id', function (err, result) {

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
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY listjobs.date ASC', function (err, result) {

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
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY driver.id', function (err, result) {

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
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY driver.driver_id', function (err, result) {

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

///////////////////
router.get('/:id', function (req, res) {
    var id = req.params.id;
    req.getConnection(function (err, connection) {
        connection.query("DELETE FROM pictures WHERE id = ? ", [id], function (err, results) {
            res.redirect('/');
            console.log('Some data has been deleted')
        });
    });
});
//////////////////

module.exports = router;