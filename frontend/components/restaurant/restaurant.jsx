import React from 'react';
import RestaurantMainContainer from './restaurant_main_container';
import RestaurantContentContainer from './restaurant_content_container';

class Restaurant extends React.Component {
  constructor(props) {
    super(props);
    window.scrollTo(0, 0);
  }

  componentDidMount() {
    this.props.fetchRestaurant(this.props.restaurantId);
  }

  componentWillReceiveProps(newProps) {
    if ( newProps.restaurantId !== this.props.restaurantId ) {
      this.props.fetchRestaurant(newProps.restaurantId);
    }
  }

  render() {
    return (
      <div className="restaurant-show">
        <RestaurantMainContainer />
        <RestaurantContentContainer />
      </div>
    );
  }
}

export default Restaurant;
