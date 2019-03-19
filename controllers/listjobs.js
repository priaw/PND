exports.getAllListjob = (req, res, next) => {
    res.render('./patial/listJobTable', {
        PageTitle : 'listJobTable',
        path : 'index/listjob',
        formCSS : true,
        productCSS : true,
        addActiveProduct : true
    });
}