const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const resultSchema =  new Schema({
    score : { type : Number},
    subject : {type : String},
    totalScore : {type : Number},
    questionsAttempted : {type : Array},
    userId : { type : Schema.Types.ObjectId },
    wrongAnswers : {type : Array},
    testTime : { type:Date, default: Date.now}
    
});

module.exports = mongoose.model('Result', resultSchema);

