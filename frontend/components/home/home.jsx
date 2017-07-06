import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import SearchBarContainer from '../search_bar_container';
import FeaturedRestaurant from './featured_restaurant';
import RestaurantCategory from './restaurant_category';

class Home extends React.Component {
  constructor(props) {
    super(props);
    this.randomRestaurants = this.randomRestaurants.bind(this);
    this.refresh = this.refresh.bind(this);
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
    let randomNum = Math.floor(Math.random() * (9) + 1);
    return [randomNum, (randomNum * 2), (randomNum * 3)];
  }

  refresh() {
    location.reload();
  }

  render() {
    let randomIds = this.randomRestaurants();
    let randomFeatureds = randomIds.map((id) => (
      this.props.restaurants[id]
    ));
    if (randomFeatureds[2] !== undefined) {
      return (
        <div className="home">
          <div className="home-splash">
            <div className="tint">
              <p>
                <text className="home-logo" onClick={this.refresh}>NearBytes</text>
              </p>
              {this.searchBar()}
            </div>
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
          <div className="browse-categories">
            <h4 className="category-header">Browse Restaurants by Category</h4>
            <div className="restaurant-categories">
              <div className="first-four">
                <RestaurantCategory category='Japanese' fetchRestaurants={this.props.fetchRestaurants}/>
                <RestaurantCategory category='Mexican' fetchRestaurants={this.props.fetchRestaurants}/>
                <RestaurantCategory category='Italian' fetchRestaurants={this.props.fetchRestaurants}/>
                <RestaurantCategory category='Asian Fusion' fetchRestaurants={this.props.fetchRestaurants}/>
              </div>
              <div className="last-four">
                <RestaurantCategory category='Seafood' fetchRestaurants={this.props.fetchRestaurants}/>
                <RestaurantCategory category='American' fetchRestaurants={this.props.fetchRestaurants}/>
                <RestaurantCategory category='Pizza' fetchRestaurants={this.props.fetchRestaurants}/>
                <RestaurantCategory category='Burgers' fetchRestaurants={this.props.fetchRestaurants}/>
              </div>
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
