import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import SearchBarContainer from '../search_bar_container';

class Home extends React.Component {
  constructor(props) {
    super(props);
  }

  searchBar() {
    return (
      <SearchBarContainer fetchRestaurants={this.props.fetchRestaurants}/>
    );
  }

  render() {
    return (
      <div className="home">
        <Link to="/">
          <text className="home-logo">NearBytes</text>
        </Link>
        {this.searchBar()}
        <div className="tint"></div>
      </div>
    );
  }
}

export default withRouter(Home);
