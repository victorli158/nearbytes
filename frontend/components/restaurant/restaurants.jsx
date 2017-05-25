import React from 'react';

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
        {restaurant.name}
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
