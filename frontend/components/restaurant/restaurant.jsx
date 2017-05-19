import React from 'react';
import ReviewIndexContainer from '../reviews/review_container';

class Restaurant extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchRestaurant(this.props.params.restaurantId);
  }

  componentWillReceiveProps(newProps) {
    if (this.props.params.restaurantId !== )
  }
}
