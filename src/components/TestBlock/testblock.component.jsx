import React from 'react';
import axios from 'axios';

import './testblock.styles.scss';


function setDifficulty(action, diff){
    if(action === 'positive' && diff===0){
        return(diff+1);
    }
    else if(action==='negative' && diff===0){
        return(diff-1)
    }
    else if(action==='neutral'){
        return(diff);
    }
    else{
        return(diff)
    }
    
}

function getQuestion(questions,questions_attempted, diff){
    questions_attempted = Array(questions_attempted)
        if(questions!==undefined){
                let question = questions.find(
                    (item) => item.value === diff && !(questions_attempted.includes(item.q_id)));
                    return(question)
        }
    
    }

class TestBlock extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            score : 0,
            difficulty : 0,
            total:10,
            qno : 1,
            questions_attempted : Array([])
        }
    }

    componentDidMount(){
        axios.get('http://localhost:4000/questions/get/maths')
        .then( res => {
            console.log(res.data)
             this.setState({
                questions : res.data,
                current : res.data[0],
            });
        })
        .catch(err => console.log(err))
    }

    handleChange = event => {
        const {value} = event.target
        this.setState({
            answerSelected : value,
        })
    }

    handleSubmit = event => {
        event.preventDefault();
        const {qno,answerSelected, current, questions, difficulty, questions_attempted} = this.state;
        let updateQno = qno+1;
        if(answerSelected === current.answer){
            let updatedDifficulty = setDifficulty("positive", difficulty)
            let updated_questions_attempted = Array(questions_attempted).push(current.q_id)
            console.log("updatedDifficulty", updatedDifficulty)
            let question = getQuestion(questions,updated_questions_attempted,updatedDifficulty);
            console.log("Questionsss", question)
            this.setState( state => ({
                score : state.score + state.current.marks,
                questions_attempted : updated_questions_attempted,
                current : question,
                answerSelected : null,
                qno : updateQno,
            }));            
        }
        else{
            let updatedDifficulty = setDifficulty("negative", difficulty)
            let question = getQuestion(questions,questions_attempted, updatedDifficulty);
            this.setState( state => ({
                score : state.score,
                questions_attempted :   Array(state.questions_attempted).push(current.q_id),
                current : question,
                answerSelected : null,
                qno : updateQno,
            }));
        }
    }



    render(){
        const {current} = this.state;
        console.log("Current", current)
        return (
            current ? (
                <div className="container testBlock-wrapper">
                    <div className="question-statement">
                        <span>{current.statement}</span>
                    </div>
                    <div className="options">
                        <form>
                            <div className="radio">
                                <label>
                                    <input type="radio" name="answer" value="a" onChange={this.handleChange} />
                                    {current.a}
                        </label>
                            </div>
                            <div className="radio">
                                <label>
                                    <input type="radio" name="answer" value="b" onChange={this.handleChange}/>
                                    {current.b}
                                </label>
                            </div>
                            <div className="radio">
                                <label>
                                    <input type="radio" name="answer" value="c" onChange={this.handleChange}/>
                                    {current.c}
                                </label>
                            </div>
                            <div className="radio">
                                <label>
                                    <input type="radio" name="answer" value="d" onChange={this.handleChange} />
                                    {current.d}
                                </label>
                            </div>
                            <button className="btn btn-primary" type="submit" onClick={this.handleSubmit}>Submit</button>                    
                    
                    </form>                
                </div>
                <div className="action-block">

                </div>

            </div>) : <div>Loading</div>

        )
    }
}

export default TestBlock;