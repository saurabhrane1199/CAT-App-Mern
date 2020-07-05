import React from 'react';
import axios from 'axios';

import './testblock.styles.scss';

class TestBlock extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            questions_attempted: ['110'],
            questions : [],
            score : [],
            difficulty : 0,
            current : null,
        }
    }




    getDiffQuestion(diff){
        let questions = this.state.questions;
        let questions_attempted = Array(this.state.questions_attempted);

        questions.filter(
            (item) =>  item.value === 1 && !(questions_attempted.includes(item.q_id))
        );

        console.log("Questionsss",questions)
        return questions[0];

    }



    async getQuestion(){
        let question = await this.getDiffQuestion(this.state.difficulty)
        return question;
        
    }



    componentDidMount(){
        axios.get('http://localhost:4000/questions/get/maths')
        .then( res => {
             this.setState({
                questions : res.data,
            })
        })
        .catch(err => console.log(err))

    }

    render(){
        const question  = this.getQuestion();    
        return (
            <div className="container testBlock-wrapper">
                <div className="question-statement">
                    <span>Q1. </span>
                    <span>{question.statement}</span>
                </div>
                <div className="options">
                    <span>{ question.a}</span>
                    <span>{ question.b}</span>
                    <span>{ question.c}</span>
                    <span>{ question.d}</span>


                </div>
                <div className="action-block">

                </div>

            </div>

        )
    }
}

export default TestBlock;