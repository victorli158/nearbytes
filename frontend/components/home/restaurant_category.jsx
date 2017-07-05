import React from 'react';
import { Link } from 'react-router-dom';

class RestaurantCategory extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let category = this.props.category;
    let path = `./assets/${category}.png`;
    return(
      <div className="restaurant-category">
        <img className='category-img' src={path} />
        <p className="category-name">{category}</p>
      </div>
    );
  }
}

export default RestaurantCategory;
