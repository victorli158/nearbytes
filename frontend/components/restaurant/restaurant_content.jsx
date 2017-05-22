import React from 'react';
// import ReviewIndexContainer from '../reviews/review_container';

class RestaurantContent extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const reviewItems = [];
    let reviews = this.props.restaurant.reviews;
    for (let i = 0; i < reviews.length; i++) {
      let currentReview = reviews[i];
      reviewItems.push(
        <div className="review-item">
          { currentReview.user.username }
          { currentReview.rating }
          { currentReview.created_at }
          { currentReview.body }
        </div>
      );
    }
    return (
      <div className="restaurant-show-content">
        <div className="review-container">
          { reviewItems }
        </div>
        <div className="restaurant-show-info">
          <h4 className="hours-heading">Hours</h4>
          <br/>
          <div className="days-hours">
            <ul className="days">
              <li>Mon</li>
              <li>Tue</li>
              <li>Wed</li>
              <li>Thu</li>
              <li>Fri</li>
              <li>Sat</li>
              <li>Sun</li>
            </ul>
            <ul className="hours">
              <li>{this.props.restaurant.mon}</li>
              <li>{this.props.restaurant.tue}</li>
              <li>{this.props.restaurant.wed}</li>
              <li>{this.props.restaurant.thu}</li>
              <li>{this.props.restaurant.fri}</li>
              <li>{this.props.restaurant.sat}</li>
              <li>{this.props.restaurant.sun}</li>
            </ul>
          </div>
        </div>
      </div>
    );
  }
}

export default RestaurantContent;
