const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');


function incomedriver (req, res) {
    db.execute('SELECT * FROM `listjobs` ', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            incomedriver = {
                print: result,
                moment: moment,
                page: 'date',
            }
            res.render('incomedriver', incomedriver);

        }
    });
}

router.get('/incomedriver', incomedriver);
module.exports = router;