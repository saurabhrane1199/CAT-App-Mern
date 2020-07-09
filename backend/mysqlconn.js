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

module.exports = conn;
