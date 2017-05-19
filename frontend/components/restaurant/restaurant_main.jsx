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
          <div className="review-stars-num">
            {starRating(this.props.restaurant.averageRating)} {this.props.restaurant.numReviews} reviews
          </div>
          <p>{this.props.restaurant.price} • {this.props.restaurant.categories}</p>
        </div>
        <div className="main-links">
          <button className="write-a-review">
            ★ Write a Review
          </button>
          <button className="add-photo">
            <img className="camera-icon" src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495228180/camera_tq5evd.png" />
            Add Photo
          </button>
        </div>
      </div>
    );
  }
}

export default RestaurantMain;
