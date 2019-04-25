const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

function RegisCustomer (req, res) {
    let name_cus = req.body.customer;
    let code = req.body.codename;
    let add = req.body.address;
    let con = req.body.contact;

    var sql = "INSERT INTO customer (cust_id, customer_name, code_name, address, contact_number) VALUES ?";
    var values = [
        [null, name_cus, code, add, con]
    ];
    db.query(sql, [values], function (err, result) {
        if (err) throw err;
       // console.log("OH yeah " + result.affectedRows);
      });
      res.redirect('/listjobs-date');
        
}

function showRegisCustomer (req, res) {

    res.render('regis_customer');

}

router.get('/regiscustomer', showRegisCustomer);
router.post('/saveregiscustomer', RegisCustomer);
module.exports = router;