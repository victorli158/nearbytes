import React from 'react';
import { Link } from 'react-router-dom';

class NavBar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    if (this.props.currentUser === null) {
      return (
        <div className="nav-bar">
          <Link to="/">
            <img className="logo" src="http://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/001/956/medium/Vu_Pham_1.jpg?1491007903" />
          </Link>
          <ul className="nav-buttons">
            <li><Link className="nav-button" to="/guest">Demo</Link></li>
            <li><Link className="nav-button" to="/login">Log In</Link></li>
            <li><Link className="nav-button" to="/signup">Sign Up</Link></li>
          </ul>
        </div>
      );
    } else {
      return (
        <div>
          <Link to="/" className="header-link">
            <img className="logo" src="http://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/001/956/medium/Vu_Pham_1.jpg?1491007903" />
          </Link>
          <ul>
            <li className="greeting">Hi, {this.props.currentUser.username}!</li>
            <li className="nav-buttons">
              <button onClick={this.props.logout}>Log Out</button>
            </li>
          </ul>
        </div>
      );
    }
  }

}

export default NavBar;
