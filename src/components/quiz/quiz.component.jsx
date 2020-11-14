import React from 'react';
import axios from 'axios';
import  server from '../../serverconfig';


class Quiz extends React.Component{
    constructor(props){

        super(props);
        this.state ={
            qno : 1,
            totalQuestion : 10,
            difficulty : 0,
            score : 0,
        }
    }


    componentDidMount(){
        axios.get(`${server}/questions/get/maths`)
        .then( async res => {
            console.log(res.data)
            let question = await this.getQuestion(res.data, 0)
           
             this.setState({
                questions : res.data,
                current : question,
            });
        })
        .catch(err => console.log(err))

    }




}

export default Quiz