import React from 'react';
import { Link } from 'react-router-dom';

class NavBar extends React.Component {
  constructor(props) {
    super(props);
    this.loginGuest = this.loginGuest.bind(this);
  }

  loginGuest() {
    this.props.login(this.props.guest);
  }

  render() {
    return (
      <div className="nav-bar">
        <Link to="/">
          <img className="logo" src="http://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/001/956/medium/Vu_Pham_1.jpg?1491007903" />
        </Link>
        { this.props.currentUser === null ? (
          <ul className="nav-buttons">
            <li>
              <button className="nav-button" onClick={this.loginGuest}>
                Demo
              </button>
            </li>
            <li>
              <Link to="/login">
                <button className="nav-button">
                  Log In
                </button>
              </Link>
            </li>
            <li>
              <Link to="/signup">
                <button className="nav-button">
                  Sign Up
                </button>
              </Link>
            </li>
          </ul>
        ) : (
          <ul className="nav-buttons">
            <li className="greeting">Hi, {this.props.currentUser.username}!</li>
            <li>
              <button className="nav-button" onClick={this.props.logout}>Log Out</button>
            </li>
          </ul>
        ) }
      </div>
    );
  }
  
}

export default NavBar;
