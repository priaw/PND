const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
//let body = require('body-parser'); 
moment.locale('th');

router.get('/listjobs-date', function (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY listjobs.date DESC', function (err, result) {

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


///////////////////
router.get('/delete/:list_id', function (req, res) {
    var id = req.params.list_id;
    db.query('DELETE FROM `listjobs` WHERE list_id = ? ', [id], function (err, results) {
        res.redirect('/listjobs-date');
        console.log('Some data has been deleted, id is: '+ id);
    });
});
//////////////////

<<<<<<< HEAD
router.post('/update/:list_id', function (req, res) {
    var id = req.params.list_id;
    data = {
        date : req.body.date,
        //customer : req.body.customer,
        //dealer : req.body.dealer,
       // driver : req.body.drivers,
        //truck : req.body.trucks,
        sorce : req.body.Sorce,
        destination : req.body.Destination,
        price : req.body.Price,
        job_des : req.body.Job_des
    }
    db.query('UPDATE FORM `listjobs` SET date = ?, source = ?, destination = ?, price = ?, job_description = ? WHERE list_id = ? ', [id], function (err, results) {
        //res.redirect('/listjobs-date');
        console.log('Some data has been update, id is: '+ id + data.sorce);
        // res.end('<h1>' +  id  + '<br>' + data.date +  '</h1>')
    });
});
=======

// router.get('/listjobs-result', function (req, res) {
//     db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id', function (err, result) {

//         if (err) {
//             throw err;
//         } else {
//             listjob = {
//                 print: result,
//                 moment: moment,
//                 page: 'all'
//             };
//             res.render('listjobs', listjob);
//         }
//     });
// });

// router.get('/listjobs-all', function (req, res) {
//     db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY listjobs.list_id', function (err, result) {

//         if (err) {
//             throw err;
//         } else {
//             listjob = {
//                 print: result,
//                 moment: moment,
//                 page: 'all'
//             };
//             res.render('listjobs', listjob);
//         }
//     });
// });

// router.get('/listjobs-customer', function (req, res) {
//     db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY customer.id', function (err, result) {

//         if (err) {
//             throw err;
//         } else {
//             listjob = {
//                 print: result,
//                 moment: moment,
//                 page: 'customer'

//             };

//             res.render('listjobs', listjob);
//         }
//     });
// });

// router.get('/listjobs-truck', function (req, res) {
//     db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY driver.id', function (err, result) {

//         if (err) {
//             throw err;
//         } else {
//             listjob = {
//                 print: result,
//                 moment: moment,
//                 page: 'truck'


//             };

//             res.render('listjobs', listjob);
//         }
//     });
// });
// router.get('/listjobs-driver', function (req, res) {
//     db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY driver.driver_id', function (err, result) {

//         if (err) {
//             throw err;
//         } else {
//             listjob = {
//                 print: result,
//                 moment: moment,
//                 page: 'driver',

//             };

//             res.render('listjobs', listjob);
//         }
//     });
// });


>>>>>>> f18860c059f550fab4cae4cb005c0251066886d4
module.exports = router;