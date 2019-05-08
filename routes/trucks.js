const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');


function Trucks (req, res) {
    db.execute('SELECT * FROM `trucks` ', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            truck = {
                print: result,
                moment: moment,
                page: 'date',
            }
            res.render('truck', truck);

        }
    });
}

router.get('/truck', Trucks);
module.exports = router;