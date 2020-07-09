import React from 'react';
import './resultQuestion.styles.scss'



const ResultQuestion = ({question}) => (
    <div className="card-wrapper">
  <div className="card">
    <div className="card-header" id={'header'+question.q_id}>
      <h5 className="mb-0">
          {question.statement}
      </h5>
    </div>
    <div className="card-body">
        <div className={`optionsContainer  ${question.answer==='a' ? 'correct' : 'incorrect' }  `}>
            <h5>A. {question.a}</h5>
        </div>
        <div className={`optionsContainer ${question.answer==='b' ? 'correct' : 'incorrect' }  `}>
            <h5>B. {question.b}</h5>
        </div>
        <div className={`optionsContainer  ${question.answer==='c' ? 'correct' : 'incorrect' }  `}>
            <h5>C. {question.c}</h5>
        </div>
        <div className={`optionsContainer  ${question.answer==='d' ? 'correct' : 'incorrect' }  `}>
            <h5>D. {question.d}</h5>
        </div>
      </div>{}
    
  </div> 
  </div>

)

export default ResultQuestion