const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');


function Driver (req, res) {
    db.execute('SELECT * FROM `driver` ', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            driver = {
                print: result,
                page: 'date',
            }
            res.render('driver', driver);

        }
    });
}

router.get('/driver', Driver);
module.exports = router;