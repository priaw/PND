const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');

function budget (req, res) {
    db.execute('SELECT * FROM `budgets`', function (err, result, field) {
        if (err) {
            throw err;
        } else {
            budget = {
                print: result,
                page: 'date',
            }
            res.render('budget', budget);

        }
    });
}
router.get('/budget', budget);

module.exports = router;