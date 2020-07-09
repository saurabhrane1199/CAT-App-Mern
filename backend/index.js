const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const cors = require('cors')
const mongoose = require('mongoose')
const PORT = 4000;
const morgan = require('morgan')
const conn = require('./mysqlconn');


app.use(cors())
app.use(bodyParser.json())


app.use(morgan('dev'))
// app.use('/users',require('./userRoute'))

app.set('jwt-secret', "secret")

app.get('/', (req, res) => {
    res.send('Hello JWT')
})

app.use('/users', require('./user_api/userRoutes'))

app.use('/questions', require('./questions_api/questionRoutes'))

app.use('/test', require('./result_api/resultRoutes'))

app.listen(PORT,()=>{
    console.log("Server is running on Port\n"+PORT);
});

mongoose.connect('mongodb://localhost:27017/cat')
const db = mongoose.connection
db.on('error', console.error)
db.once('open', ()=>{
    console.log('connected to mongodb server')
})