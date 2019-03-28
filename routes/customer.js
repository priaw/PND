const express = require('express');
const router = express.Router();
const moment = require('moment');
const db = require('../models/database');
moment.locale('th');

router.get('/customer', function (req, res) {
    db.execute('SELECT * FROM `list-jobs`', function (err, result) {
        
        if (err) {
            throw err;
        } else {
            listjob = {
                print: result,
                moment: moment,
                
                
            };
           
            res.render('listjobs', listjob);
        }
    });

});
module.exports = router;