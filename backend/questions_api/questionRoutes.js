const router = require('express').Router();

const mysql = require('mysql')

var conn = mysql.createConnection({
    host : "localhost",
    user : "root",
    password : "",
    database : "cat1"
});

conn.connect( err => {
    if(err){
        console.log(err)
        return}
    console.log("MySQL Connection Succesful")
});

router.get('/get/:subject/:diff', (req,res,next) => {
    let query = `SELECT * FROM ${req.params.subject} where value=${req.params.diff} ORDER BY RAND() LIMIT 5`
    conn.query(query, (err,result, fields) => {
        if(err){
            res.status(400)
            res.send("Database Error")
        }
        else{
            res.status(200)
            res.json(result)
        }
    })

});

module.exports = router;












