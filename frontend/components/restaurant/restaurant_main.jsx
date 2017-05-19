import React from 'react';
import { starRating, goodStar, badStar, decentStar, blankStar } from '../star_rating';
// import ReviewIndexContainer from '../reviews/review_container';

class RestaurantMain extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchRestaurant(this.props.restaurant.id);
  }

  render() {
    return (
      <div className="restaurant-show-main">
        <div className="main-info">
          <p className="main-name">{this.props.restaurant.name}</p>
          {starRating(this.props.restaurant.averageRating)}
          <p>{this.props.restaurant.price}</p>
          <p>{this.props.restaurant.categories}</p>
        </div>
      </div>
    );
  }
}

export default RestaurantMain;
