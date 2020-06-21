import React from 'react'
import {connect} from 'react-redux';


class Main extends React.Component{
    
    render(){
        const currentUser = this.props.currentUser;
        return (<div>Map Block {currentUser.name}</div>);
    }

}   

const mapStateToProps = ({user}) => ({
    currentUser : user.currentUser,
  });


export default connect(mapStateToProps)(Main);