import React, { Component} from 'react';
import logo from './logo.svg';
import './App.css';
import "bootstrap/dist/css/bootstrap.min.css";
import {Route,BrowserRouter as Router,Link} from 'react-router-dom'
import Login from './components/login/login.component'
import Register from './components/register/register.component'
import TestBlock from './components/TestBlock/testblock.component'
import ScoreCard from './components/scorecard/scorecard.component'

import { resetCurrentUser } from './redux/user/user.actions';

import Main from './components/main.component'
import {connect} from 'react-redux'
import {Redirect} from 'react-router-dom';

class App extends Component{

  render(){
    const {currentUser, resetCurrentUser} = this.props;
    return (
      <Router>
              <div className="container-fluid">
          <nav className="navbar navbar-expand-lg navbar-light bg-light">
            <a className="navbar-brand" href="https://codingthesmartway.com">
              <img src={logo} width="30" height="30" alt="CodingTheSmartWay.com" />
            </a>
            <Link to="/" className="navbar-brand">MERN-Stack Todo App</Link>
            <div className="collpase navbar-collapse">
              <ul className="navbar-nav mr-auto">
                <li className="navbar-item">
                  <Link to="/" className="nav-link">Todos</Link>
                </li>
                <li className="navbar-item">
                  <Link to="/create" className="nav-link">Create Todo</Link>
                </li>
                <li>
                  <button className="btn btn-default" onClick = {() => resetCurrentUser()}>Sign Out</button>
                </li>
              </ul>
            </div>
          </nav>
          <br/>
        {/* <Route path="/" exact component={HomePage}/> */}
        <Route exact path="/"  render = { () => currentUser == null ? (<Redirect to='/login'/>) :  (<Main/>)}/>
        <Route path="/login" exact component={Login}/>
        <Route path="/register" exact component={Register}/>
        <Route path="/test" exact component={TestBlock}/>
        <Route path="/score" exact component={ ScoreCard } />
        </div>
      </Router>)
  }

}

const mapStateToProps = ({user}) => ({
  currentUser : user.currentUser,
});

const mapDispatchToProps = dispatch => ({
  resetCurrentUser : () => dispatch(resetCurrentUser())
})

export default connect(mapStateToProps,mapDispatchToProps)(App);

// export default connect(mapStateToProps)(App);
