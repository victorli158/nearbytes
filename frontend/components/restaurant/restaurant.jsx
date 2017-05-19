import React from 'react';
// import ReviewIndexContainer from '../reviews/review_container';

class Restaurant extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    console.log(this.props);
    this.props.fetchRestaurant(this.props.match.params.id);
  }

  render() {
    return (
      <div className="test">Restaurant!</div>
    );
  }
}

export default Restaurant;
