const express = require('express');
const router = express.Router();
const db = require('../models/database');

const moment = require('moment');
moment.locale('th');

const customerrouter = require('./customer');


function fetchAll (req, res) {
    db.execute('SELECT * FROM `listjobs` JOIN customer ON listjobs.customer = customer.cust_id JOIN dealer ON listjobs.dealer = dealer.dealer_id JOIN driver ON listjobs.driver = driver.driver_id ORDER BY listjobs.list_id', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            listjob = {
                print: result,
                moment: moment,
                page: 'date',
            }
            res.render('listjobs', listjob);

        }
    });
}

function fetchCustomer (req, res){
    db.execute('SELECT * FROM `customer` ORDER BY customer.cust_id', function (err, result) {
        if (err) {
            throw err;
        } else {
            customerList = {
                customerPrint: result,
            }
            // console.log(customerList.customerPrint);
        }
    });
}

function deleteByID (req, res) {
    var id = req.params.list_id;
    db.query('DELETE FROM `listjobs` WHERE list_id = ? ', [id], function (err, results) {
        res.redirect('/listjobs-date');
        console.log('Some data has been deleted, id is: ' + id);
    });
}

function updateByID (req, res) {
    let price = req.body.price
    let date = req.body.date
    let customer = req.body.customer
    let dealer = req.body.dealer
    let driver = req.body.driver
    let truck = req.body.trucks
    let sorce = req.body.source
    let destination = req.body.destination
    let id = req.params.list_id
    db.query('UPDATE `listjobs` SET price = ?, date = ?, source = ?, destination = ? WHERE list_id = ? ', [price, date, sorce, destination, id], function (err, results) {
        res.redirect('/listjobs-date');
        console.log('Some data has been update, data price: ' + date + ' id: ' + id);
    });
}

function insertJob (req, res) {
    let price = req.body.price
    let date = req.body.date
    let customer = req.body.customer
    let dealer = req.body.dealer
    let driver = req.body.driver
    let truck = req.body.trucks
    let sorce = req.body.source
    let destination = req.body.destination
    let desc = req.body.job_description
    let id = req.params.list_id

    // db.query('UPDATE `listjobs` SET price = ?, date = ?, source = ?, destination = ? WHERE list_id = ? ', [price, date, sorce, destination, id], function (err, results) {
    //     //db.query('UPDATE FORM `listjobs` SET date = ?, source = ?, destination = ?, price = ?, job_description = ? WHERE list_id = ? '[data.date], [data.sorce], [id], function (err, results) {
    //     res.redirect('/listjobs-date');
    //     //console.log('Some data has been update, data price: '+price+ ' id: ' + id);
    //     // res.end('<h1>' +  id  + '<br>' + data.date +  '</h1>'vvv)
    // });

    var sql = "INSERT INTO listjobs (list_id, customer, date, dealer, driver, trucks, source, destination, price, job_description, advance_fuel, status) VALUES ?";
    var values = [
        [null, customer, date, dealer, driver, truck, sorce, destination, price, desc, 0, 1] // ยังไม่ได้ใส่ adv_fuel กับ status
    ];
    db.query(sql, [values], function (err, result){
        if (err) throw err;
        console.log("success");
        res.redirect('/listjobs-date');
    });
    
}


router.get('/listjobs-date', fetchAll);

router.get('/delete/:list_id', deleteByID);

router.post('/update/:list_id', updateByID);

router.post('/insert', insertJob);

module.exports = router;