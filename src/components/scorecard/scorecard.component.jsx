import React from 'react';
import axios from 'axios';
import ResultQuestion from '../resultQuestion/resultQuestion.component';
import  server from '../../serverconfig';

const saveResultToDB = (score, subject, totalScore, questionsAttempted, userId, wrongAnswers) => 

    new Promise( (resolve,reject)=> {
        const data = {
            score : score,
            subject : subject,
            totalScore : totalScore ,
            questionsAttempted : questionsAttempted,
            userId : userId,
            wrongAnswers : wrongAnswers,
        }
    
        axios.post(`${server}/test/result`, data)
            .then( res => {
                if(res.status === 200){
                    resolve("Result Saved")
                }
                else{
                    reject(new Error("Opps PoST Failes"))
                }
            })
            .catch( err=> {
                console.log(err)
                reject(err)
            })
    })

        

const getQuestions = (subject, questionsAttempted) => new Promise( (resolve,reject) => {
    
    const data = {
        subject : subject,
        questionsAttempted : questionsAttempted,
    }

    axios.post(`${server}/test/getQuestions`,data)
        .then( res => resolve(res.data))
        .catch(err => reject(new Error("Failed" + err)))

})



class ScoreCard extends React.Component{

    constructor(props){
        super(props)
        this.state ={

        }
    }
    
    componentDidMount(){
        const {score, totalScore, questionsAttempted, userId, wrongAnswers} = this.props.location.state.data 
        const subject = 'maths'
        saveResultToDB(score, subject, totalScore, questionsAttempted, userId, wrongAnswers)
            .then( res => {
                
                if(res) alert("Result Submitted") 
                else alert("Error Occured")

                getQuestions(subject, questionsAttempted)
                    .then(res => this.setState({questions : res}))
                    .catch(err => console.log(err))
            })
            .catch(err => alert("Error Occurecd"+err))
    }



    render(){
    
    const {score,totalScore, } = this.props.location.state.data
    const questions = this.state.questions
    console.log("DATA", this.props)
    return questions!==undefined ? (
        <div>
            <p style={{ textAlign: "center", fontSize: "50px" }}>
            You Score is <br/> 
            {score}/{totalScore}<br/>
            </p>
                {questions.map(
                    question => (<ResultQuestion key={question.q_id} question={question}/>)
                )}
            
        </div>
    ) : (<div>Loading</div>)
    
}
}

export default ScoreCard;