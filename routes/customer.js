// const express = require('express');
// const router = express.Router();
// const moment = require('moment');
// const db = require('../models/database');
// moment.locale('th');

<<<<<<< HEAD
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
=======
router.get('/listjobs-date/cust', function (req, res) {
    db.execute('SELECT * FROM `customer` ORDER BY customer.cust_id', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            customerList = {
                prints: result
            }
            console.log(customerList.print);
        }
        res.render('./modal/partial/customer_select', customerList);
    });
});
module.exports = router;
>>>>>>> FETCH IS COOL!!!
