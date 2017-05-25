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
        { restaurant.name }
        { starRating(restaurant.averageRating) } { restaurant.numReviews } reviews
        { restaurant.price } • { restaurant.categories }
        { restaurant.address }
        { restaurant.city_params }
      </div>
    ));
    return (
      <div className="all-restaurants-container">
        { restaurantItems }
      </div>
    );
  }

}

export default Restaurants;
