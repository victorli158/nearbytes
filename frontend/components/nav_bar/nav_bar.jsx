import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import SearchBarContainer from '../search_bar_container';

class NavBar extends React.Component {
  constructor(props) {
    super(props);
    this.searchBar = this.searchBar.bind(this);
    this.navigateHome = this.navigateHome.bind(this);
  }

  componentDidUpdate() {
    this.searchBar();
  }

  searchBar() {
    if (this.props.location.pathname !== "/" && this.props.location.pathname !== "/login" && this.props.location.pathname !== "/signup") {
      return (
        <SearchBarContainer fetchRestaurants={this.props.fetchRestaurants}/>
      );
    }
  }

  navigateHome() {
    return this.props.history.replace("/");
  }

  render() {
    return (
      <div className="nav-bar">
        <p className="logo" onClick={this.navigateHome}>
          NearBytes
        </p>
        { this.searchBar() }
        { this.props.currentUser === null || this.props.currentUser === undefined ? (
          <ul className="nav-buttons">
            <li>
              <Link to="/login">
                <div className="nav-button" onClick={this.props.clearErrors}>
                  Log In
                </div>
              </Link>
            </li>
            <li>
              <Link to="/signup">
                <div className="nav-button" onClick={this.props.clearErrors}>
                  Sign Up
                </div>
              </Link>
            </li>
          </ul>
        ) : (
          <ul className="nav-buttons">
            <li className="greeting">Hi, {this.props.currentUser.username}!</li>
            <li>
              <div className="nav-button" onClick={this.props.logout}>
                Log Out
              </div>
            </li>
          </ul>
        ) }
      </div>
    );
  }

}

export default withRouter(NavBar);
