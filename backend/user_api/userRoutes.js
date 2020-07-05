const router = require('express').Router();
const User = require('./userModel')
const bcrypt = require('bcryptjs')

router.post('/register', (req,res,next) =>{
    let tempUser =  new User(req.body);
    tempUser.save()
    .then(reg => {
        res.status(200).send("Registration Success");
    })
    .catch(err =>{
        res.status(400).send(err)
    })
});

router.post('/login',(req,res)=>{
    User.findOne({username: req.body.username})
    .then(user => {
        console.log("User info", user)
        if(!user){
            res.status(850).send("User Not Found")
        }
        else{
            console.log("User from login",user)
            bcrypt.compare(req.body.password, user.password)
            .then(
                passwordMatch => passwordMatch ? res.status(200).json(user) : res.status(500).send("No record found")
                )
            .catch(err =>res.status(400).send(err))
        }
        ;
    })
    
})


module.exports = router;