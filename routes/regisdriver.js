const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

function RegisDriver (req, res) {
    let name = req.body.name;
    let ser_name = req.body.sername;
    let add_driver = req.body.address_driver;
    let con_driver = req.body.contact_driver;
    let identity_driver = req.body.identity;


    var sql = "INSERT INTO driver (driver_id, driver_name, driver_surname, driver_address, driver_contact, driver_identity) VALUES ?";
    var values = [
        [9, name, ser_name, add_driver, con_driver, identity_driver] // ยังไม่ได้ใส่ id คนติดต่อกับ บ.ติดต่อ
    ];
    db.query(sql, [values], function (err, result) {
        if (err) throw err;
        // console.log("OH yeah " + result.affectedRows);
      });
      res.redirect('/listjobs-date');
        
}

function showRegisDriver (req, res) {

    res.render('regis_driver');
   
}

router.get('/regis_driver', showRegisDriver);
router.post('/saveregisdriver', RegisDriver);
module.exports = router;