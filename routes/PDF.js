const express = require('express');
const router = express.Router();
// const moment = require('moment');
// const db = require('../models/database');
const PDFDocument = require('pdfkit');
//const blobStream  = require('blob-stream');
var doc = new PDFDocument();
//var stream = doc.pipe(blobStream());

router.get('/pdf', function (req, res) {
    // create a document and pipe to a blob
    doc.fontSize(25).text('Test', 100, 80);

    // end and display the document in the iframe to the right
    doc.end();
    stream.on('finish', function() {
    iframe.src = stream.toBlobURL('application/pdf');
}); 
});

module.exports = router;