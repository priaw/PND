const db = require('../../models/database');

module.exports = class fetching {

    constructor(id, date, customer, dealer, driver, truckType, jobSource, jobDestination, price, jobDescription) {
        this.id = id;
        this.date = date;
        this.customer = customer;
        this.dealer = dealer;
        this.driver = driver;
        this.truckType = truckType;
        this.jobSource = jobSource;
        this.jobDestination = jobDestination;
        this.price = price;
        this.jobDescription = jobDescription;
    }

    static fetchAllListjob() {
        return db.query('SELECT * FROM `list-jobs`',
            function (err, results) {
                console.log(results);
            });
    }
}