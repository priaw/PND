let sql = "SELECT * FROM `list-jobs`";
let list_jobs = db.query(sql, (err, result) => {
                 if(err) throw err;
        //console.log(result);  
        //res.send('')
    });
    res.render('listjob',(req, res) => {
        //res.end("<h1>" + TextRow.id + "<br>" + TextRow.date + "</br>"+ TextRow.source + "</h1>");
    });