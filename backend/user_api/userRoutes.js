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

router.post('/login',({body},res)=>{
    User.findOne({username:body.username})
    .then(user => {
        console.log("user from login",user)
        if(!user){
            res.status(204).send("No username")
            
        }
        else{
            bcrypt.compare(body.password, user.password)
            .then(passwordMatch => passwordMatch ? res.status(200).send(`Hello ${user.username}`) : res.sendStatus(204))
        }
        ;
    })
    
})


module.exports = router;