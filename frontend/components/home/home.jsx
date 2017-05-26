import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import SearchBarContainer from '../search_bar_container';
import FeaturedRestaurant from './featured_restaurant';

class Home extends React.Component {
  constructor(props) {
    super(props);
    this.randomRestaurants = this.randomRestaurants.bind(this);
    window.scrollTo(0, 0);
  }

  componentDidMount() {
    this.props.fetchRestaurants("");
  }

  searchBar() {
    return (
      <SearchBarContainer fetchRestaurants={this.props.fetchRestaurants}/>
    );
  }

  randomRestaurants() {
    let randomNum = Math.floor(Math.random() * (10) + 1);
    return [randomNum, (randomNum * 2), (randomNum * 3)];
  }

  render() {
    let randomIds = this.randomRestaurants();
    let randomFeatureds = randomIds.map((id) => (
      this.props.restaurants[id]
    ));

    if (randomFeatureds[0] !== undefined) {
      return (
        <div className="home">
          <div className="home-splash">
            <Link to="/">
              <text className="home-logo">NearBytes</text>
            </Link>
            {this.searchBar()}
            <div className="tint"></div>
          </div>
          <div className="featured-restaurants">
            <h3 className="nearbytes-sf">NearBytes San Francisco</h3>
            <h4 className="featured-header">Featured Restaurants</h4>
            <div className="three-featureds">
              {randomFeatureds.map((restaurant, idx) => (
                <FeaturedRestaurant key={idx} restaurant={restaurant}/>
              ))}
            </div>
          </div>
        </div>
      );
    } else {
      return (<div></div>);
    }
  }
}

export default withRouter(Home);
