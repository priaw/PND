// const express = require('express');
// const router = express.Router();
// const moment = require('moment');
// const db = require('../models/database');
// moment.locale('th');

// function RegisCustomer (req, res) {
//     let name_cus = req.body.customer;
//     let code = req.body.codename;
//     let add = req.body.address;
//     let con = req.body.contact;

//     db.query('UPDATE `customer` SET customer_name = ?, code-name = ?, address = ?, contact-number = ?', [name_cus, code, add,con], function (err, results) {
       
//         res.redirect('/listjobs-date');
        
//     });
// }

// router.get('/regiscustomer', RegisCustomer);
// module.exports = router;