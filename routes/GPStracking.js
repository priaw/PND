const express = require('express');
const router = express.Router();0

router.get('/tracking', function (req, res) {
    res.render('tracking', listjob);
});

module.exports = router;