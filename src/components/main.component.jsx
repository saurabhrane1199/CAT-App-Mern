import React from 'react'
// import {connect} from 'react-redux';
import TestBlock from './TestBlock/testblock.component';


class Main extends React.Component{
    
    render(){
        // const currentUser = this.props.currentUser;
        return <TestBlock/>;
    }

}   

// const mapStateToProps = ({user}) => ({
//     currentUser : user.currentUser,
//   });


// export default connect(mapStateToProps)(Main);

export default (Main);