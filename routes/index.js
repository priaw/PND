const express = require('express');
const router = express.Router();
const fetching = require('../models/fetching');
const db = require('../models/database')
router.get('/',function(req, res){
    db.query('SELECT * FROM `list-jobs`', function(err, result) {
        if(err){
            throw err;
        } else {
            listjob = {print: result};  
            res.render('index', listjob);
            console.log(result);           
        }
    });

    
});

module.exports = router;