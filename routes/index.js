const express = require('express');
const router = express.Router();
const fetching = require('../models/fetching');

router.get('/',function(req, res){
    
});

exports.getListjob = (req, res, next) => {
    fetching.fetchAllListjob()
    .then(([rows, FieldData]) => {
        res.render('index', {
            row : rows
        });
    })
    .catch(err => console.log(err));
}

module.exports = router;