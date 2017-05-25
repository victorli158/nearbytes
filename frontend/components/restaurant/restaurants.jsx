import React from 'react';
import { starRating } from '../star_rating';

class Restaurants extends React.Component {
  constructor(props) {
    super(props);
  }

  handleInput (e) {
    this.setState({inputVal: e.currentTarget.value});
  }

  handleSubmit (e) {
    e.preventDefault();
    this.props.fetchRestaurants(this.state.inputVal, this.props.bounds);
  }

  render() {
    let restaurants = this.props.restaurants;
    const restaurantItems = restaurants.map(restaurant => (
      <div className="restaurant-item" key={restaurant.id}>
        <img className="restaurant-item-photo"
          src={restaurant.pictures[Object.keys(restaurant.pictures)[Object.keys(restaurant.pictures).length - 1]].url}/>
        <div className="restaurant-item-info">
          { restaurant.name }
          <div className="rating-reviews">
            { starRating(restaurant.averageRating) }
            { restaurant.numReviews } reviews
          </div>
          { restaurant.price } • { restaurant.categories }
        </div>
        <div className="restaurant-item-address">
          <p>{ restaurant.address }</p>
          <p>{ restaurant.city_params }</p>
        </div>
      </div>
    ));
    return (
      <div className="search-results-page">
        <div className="all-restaurants-container">
          { restaurantItems }
        </div>
        <img className="search-results-map" src="http://www.newthinktank.com/wp-content/uploads/2011/08/US-Map-Detailed-EPS.png"/>
      </div>
    );
  }

}

export default Restaurants;
