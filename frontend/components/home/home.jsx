import React from 'react';
import { Link } from 'react-router-dom';
import SearchBar from '../search_bar';

class Home extends React.Component {
  constructor(props) {
    super(props);
  }

  searchBar() {
    if (this.props.location !== "/") {
      return (
        <SearchBar fetchRestaurants={this.props.fetchRestaurants}/>
      );
    }
  }

  render() {
    return (
      <div className="home">
        <Link to="/">
          <text className="home-logo">NearBytes</text>
          {this.searchBar()}
        </Link>
        <div className="tint"></div>
      </div>
    );
  }
}

export default Home;
