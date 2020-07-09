const router = require('express').Router();
const Result = require('./resultModel');
const conn = require('../mysqlconn');

router.post('/result', (req,res) => {
    let result = new Result(req.body);
    result.save()
    .then( (err,doc) => {
            res.status(200).send("Result Saved Successfully")
        })
});


router.post('/getQuestions', (req,res) => {
    let questionIds = req.body.questionsAttempted
    let subject = req.body.subject

    let query = `select * from ${subject} where q_id in (?)`;

    let data = questionIds;

    let queryData = [data]

    conn.query(query, queryData, (err,result, fields)=>{
        if(err){
            res.status(500).send("Database Error")
        }
        else if(result){
            res.status(200).json(result)
        }
    }) 
})

module.exports = router;