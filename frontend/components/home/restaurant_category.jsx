import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class RestaurantCategory extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick () {
    this.props.fetchRestaurants(this.props.category);
    return this.props.history.replace("/restaurants");
  }

  render() {
    let category = this.props.category;
    let path = `http://res.cloudinary.com/nearbytes/image/upload/v1499395359/${category}.png`;
    return(
      <div className="restaurant-category" onClick={this.handleClick}>
        <img className='category-img' src={path} />
        <p className="category-name">{category}</p>
      </div>
    );
  }
}

export default withRouter(RestaurantCategory);
