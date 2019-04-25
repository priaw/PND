const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

function RegisDealer (req, res) {
    let name = req.body.name;
    let ser_name = req.body.sername;
    let add_deal = req.body.address_deal;
    let con_deal = req.body.contact_deal;
    let cus_deal = req.body.cus_deal;


    var sql = "INSERT INTO dealer (dealer_id, dealer_name, dealer_surname, dealer_address, dealer_contact, dealer_customer_id) VALUES ?";
    var values = [
        [9, name, ser_name, add_deal, con_deal, 2] // ยังไม่ได้ใส่ id คนติดต่อกับ บ.ติดต่อ
    ];
    db.query(sql, [values], function (err, result) {
        if (err) throw err;
        // console.log("OH yeah " + result.affectedRows);
      });
      res.redirect('/listjobs-date');
        
}

function showRegisDealer (req, res) {

    res.render('regis_dealer');

}

router.get('/regisdealer', showRegisDealer);
router.post('/saveregisdealer', RegisDealer);
module.exports = router;