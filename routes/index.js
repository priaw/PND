const express = require('express');
const router = express.Router();
const moment = require('moment')
const db = require('../models/database');
router.get('/',function(req, res){
    db.query('SELECT * FROM `list-jobs`', function(err, result) {
        if(err){
            throw err;
        } else {
            listjob = {print: result};  
            date = listjob.id;
            res.render('index', listjob, date);
            console.log(result);           
        }
    });
});

module.exports = router;