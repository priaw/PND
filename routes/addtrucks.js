const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

function Savetrucks (req, res) {
    let trucks_id = req.body.trucks_id;
    let trucks_type = req.body.trucks_type;
    let brand = req.body.brand;
    let model = req.body.model;
    let plate_no = req.body.plate_no;


    var sql = "INSERT INTO trucks (truck_id, truck_type, brand, model, plate_no) VALUES ?";
    var values = [
        [trucks_id, trucks_type, brand, model, plate_no] // ยังไม่ได้ใส่ id คนติดต่อกับ บ.ติดต่อ
    ];
    db.query(sql, [values], function (err, result) {
        if (err) throw err;
        // console.log("OH yeah " + result.affectedRows);
      });
      res.redirect('/listjobs-date');
        
}

function showRegisDriver (req, res) {

    res.render('regis_trucks');
   
}

router.get('/regis_trucks', showRegisDriver);
router.post('/savetrucks', Savetrucks);
module.exports = router;