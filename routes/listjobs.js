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

router.post('/update/:list_id', function (req, res) {
    // var data = [
    //     price = req.body.price,
    //     id = req.params.list_id,
    //     date = req.body.date,
    //     customer = req.body.customer,
    //     dealer = req.body.dealer,
    //     driver = req.body.drivers,
    //     truck = req.body.trucks,
    //     sorce = req.body.Sorce,
    //     destination = req.body.Destination,
        
    //     // job_des = req.body.Job_des
    // ]
    let price = req.body.price
    let date = req.body.date
    let customer = req.body.customer 
    let dealer = req.body.dealer
    let driver = req.body.driver
    let truck = req.body.trucks
    let sorce = req.body.sorce
    let destination = req.body.destination
    let id = req.params.list_id
    db.query('UPDATE `listjobs` SET price = ?, date = ?, source = ?, destination = ? WHERE list_id = ? ' ,[price,date,sorce,destination,id], function (err, results){

    
    //db.query('UPDATE FORM `listjobs` SET date = ?, source = ?, destination = ?, price = ?, job_description = ? WHERE list_id = ? '[data.date], [data.sorce], [id], function (err, results) {
        res.redirect('/listjobs-date');
       //console.log('Some data has been update, data price: '+price+ ' id: ' + id);
        // res.end('<h1>' +  id  + '<br>' + data.date +  '</h1>'vvv)
    });
});
module.exports = router;