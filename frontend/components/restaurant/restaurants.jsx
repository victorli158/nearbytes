import React from 'react';
import { starRating } from '../star_rating';
import { Link } from 'react-router-dom';
import RestaurantsMap from './restaurants_map';

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
        <Link to={`/restaurants/${restaurant.id}`}>
        <img className="restaurant-item-photo"
          src={restaurant.pictures[Object.keys(restaurant.pictures)[Object.keys(restaurant.pictures).length - 1]].url}/>
        </Link>
        <div className="restaurant-item-info">
          <Link className="link" to={`/restaurants/${restaurant.id}`}><p className="restaurant-name">{ restaurant.name }</p></Link>
          <div className="rating-reviews">
            { starRating(restaurant.averageRating) }
            { restaurant.numReviews } reviews
          </div>
          <p className = "restaurant-price-categories">{ restaurant.price } • { restaurant.categories }</p>
        </div>
        <div className="restaurant-item-contact">
          <p>{ restaurant.address }</p>
          <p>{ restaurant.city_params }</p>
          <p>{ restaurant.phone }</p>
        </div>
      </div>
    ));
    return (
      <div className="search-results-page">
        <div className="all-restaurants-container">
          { restaurantItems }
        </div>
        <RestaurantsMap restaurants = {this.props.restaurants} updateFilter = {this.props.updateFilter}/>
      </div>
    );
  }

}

export default Restaurants;
