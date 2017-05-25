import React from 'react';
import { starRating } from '../star_rating';
import { Link } from 'react-router-dom';
import SingleRestaurantMap from './single_restaurant_map';
// import ReviewIndexContainer from '../reviews/review_container';

class RestaurantMain extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let pictures = this.props.restaurant.pictures;
    return (
      <div className="restaurant-show-main">
        <div className="main-center">
          <div className="main-info">
            <p className="main-name">{this.props.restaurant.name}</p>
            <div className="review-stars-num">
              {starRating(this.props.restaurant.averageRating)} {this.props.restaurant.numReviews} reviews
            </div>
            <p>{this.props.restaurant.price} • {this.props.restaurant.categories}</p>
          </div>
          <div className="main-links">
            <Link to={`/restaurants/${this.props.restaurant.id}/reviews/new`}>
              <button className="write-a-review">
                ★ Write a Review
              </button>
            </Link>
            <button className="add-picture">
              <img className="camera-icon" src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495228180/camera_tq5evd.png" />
              Add Picture
            </button>
          </div>
          <div className="map-and-pictures">
            <SingleRestaurantMap restaurants= {[this.props.restaurant]} />
            <img className="restaurant-picture" src={pictures[Object.keys(pictures)[Object.keys(pictures).length - 1]].url}/>
            <img className="restaurant-picture" src={pictures[Object.keys(pictures)[Object.keys(pictures).length - 2]].url}/>
            <img className="restaurant-picture" src={pictures[Object.keys(pictures)[Object.keys(pictures).length - 3]].url}/>
          </div>
        </div>
      </div>
    );
  }
}

export default RestaurantMain;
