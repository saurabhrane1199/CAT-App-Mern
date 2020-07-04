import React from 'react'
import './testblock.styles.scss'

class TestBlock extends React.Component{

    


    constructor(props){
        super(props);
        this.state = {
            questions_attempted: [],
            questions_medium : [],
            questions_hard : [],
            questions_easy : [],
            score : [],

        }
    }

    render(){
        return (
            <div className="container testBlock-wrapper">
                <div className="question-statement">
                    <span>Q1. </span>
                    <span>We are just trying no question here</span>
                </div>
                <div className="options">

                </div>
                <div className="action-block">

                </div>

            </div>

        )
    }
}

export default TestBlock;