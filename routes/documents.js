const express = require('express');
const router = express.Router();

router.use('/',function(req, res){
    res._write('./partial/header');
    
});

module.exports = router;