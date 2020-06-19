import React, {Component} from 'react';
import { Redirect } from 'react-router-dom';
import axios from 'axios';

class Login extends Component{
    constructor(props){
        super(props)
        this.state = {
            username : '',
            password : '',
            name : '',
            category : '',
            redirect : null,
        }
    }

    handleOnChangeUserName = (e) => {
        this.setState({
          username: e.target.value,
        });
      };
    
      handleOnChangePassword = (e) => {
        this.setState({
          password: e.target.value,
        });
      };
    
      onSubmit = async (e) => {
        e.preventDefault();
        const data = {
          username: this.state.username,
          password: this.state.password,
        };

        axios.post('http://localhost:4000/users/login',data)
        .then(res => {
          console.log(res.data)
          this.setState({redirect : '/MainPage'})
        });

        this.setState({
          name : '',
          username: '',
          password: '',
          category: '',
        });
      };

    render(){
      if (this.state.redirect) {
        return <Redirect to={this.state.redirect} />
      }
        return (
            <div className="Login">
            <h1> Login </h1> 
            <form onSubmit={this.onSubmit}>
              <div>
                <div className="fields">
                  <p> Username </p>    
                  <input
                    type="text"
                    name="Username"
                    onChange={this.handleOnChangeUserName}
                    autoComplete="Username"
                    required
                  />
                </div>
                
                <div className="fields">
                  
                  <p> Password </p>    
                  <input
                    type="password"
                    name="Password"
                    onChange={this.handleOnChangePassword}
                    autoComplete="Password"
                    required
                  />
                      
                </div>
                
                <div className="buttons">
                  
                  <button
                    type="button"
                    onClick={this.onSubmit}
                    className="btn btn-primary"
                  >
                    
                      Login    
                  </button>
                </div>
                   
              </div>
               
            </form>
          </div>
  
        )
    }






}












export default Login;