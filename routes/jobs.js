const express = require('express');
const router = express.Router();

router.use('/',function(req, res){
    //query data
    res.render('./partial/listJobTable');
});

module.exports = router;



// const db = require('./models/database');                 //ตั้งค่าใน models/database.js

// db.connect((err) => {
//     if (err) {
//         throw err;
//     }
//     console.log('Connected to database');
// });

// db.query('SELECT * FROM `list-jobs`', 
//     function(err, results) {
//         console.log(results);
//   });
