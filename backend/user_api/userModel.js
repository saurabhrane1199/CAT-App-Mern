const mongoose = require('mongoose')
const Schema = mongoose.Schema;

const userSchema = new Schema({
    username: { type: String, unique: true, required: true },
    password: { type: String, required: true },
    name: { type: String, required: true },
    createdDate: { type: Date, default: Date.now },
    category : {type : Number,
                enum : [0,1,2],
                required : true,
               }

});

module.exports = mongoose.model('User',userSchema)