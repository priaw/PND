const db = require('../models/database');
const express = require('express');
exports.getAllListjob = (req, res, next) => {
    db.query('SELECT * FROM `list-jobs`', function(err, result) {
        if(err){
            throw err;
        } else {
            listjob = {print: result};  
            date = listjob.id;
            res.render('index', listjob);
            // console.log(result);           
        }
    });
}