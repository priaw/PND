const express = require('express');
const router = express.Router();

router.get('/tracking', function (req, res) {
    res.render('tracking');
});

module.exports = router;