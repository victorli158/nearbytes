import React from 'react';
// import ReviewIndexContainer from '../reviews/review_container';

class RestaurantContent extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="restaurant-show-content">
        {this.props.restaurant.name}
      </div>
    );
  }
}

export default RestaurantContent;
