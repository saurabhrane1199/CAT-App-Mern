import React, { Component} from 'react';
import logo from './logo.svg';
import './App.css';
import "bootstrap/dist/css/bootstrap.min.css";
import {Route,BrowserRouter as Router,Link} from 'react-router-dom'
import Login from './components/login/login.component'
import Register from './components/register/register.component'

class App extends Component{
  render(){
    return (
      <Router>
              <div className="container">
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
              </ul>
            </div>
          </nav>
          <br/>
        {/* <Route path="/" exact component={HomePage}/> */}
        <Route path="/login" exact component={Login}/>
        <Route path="/register" exact component={Register}/>
        </div>
      </Router>
    )
  }

}

export default App;
