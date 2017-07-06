import React from 'react';
import { starRating } from '../star_rating';
import { Link, withRouter } from 'react-router-dom';

class FeaturedRestaurant extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div className="featured-restaurant">
        <Link to={`/restaurants/${this.props.restaurant.id}`}>
          <img className="featured-pic"
            src={this.props.restaurant.pictures[Object.keys(this.props.restaurant.pictures)[Object.keys(this.props.restaurant.pictures).length - 1]].url} />
        </Link>
        <div className='f-title-properties'>
          <Link className="link" to={`/restaurants/${this.props.restaurant.id}`}>{this.props.restaurant.name}</Link>
          <div className="f-stars">
            {starRating(this.props.restaurant.averageRating)}
            <text className="f-reviews">{this.props.restaurant.numReviews} reviews</text>
          </div>

          <div>
            <text className="restaurant-index-price">{this.props.restaurant.price} • {this.props.restaurant.categories}</text>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(FeaturedRestaurant);
