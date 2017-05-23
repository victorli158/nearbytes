import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import { goodStar, decentStar, badStar, blankStar, starRating } from '../star_rating';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.renderOneRating = this.renderOneRating.bind(this);
    this.renderTwoRating = this.renderTwoRating.bind(this);
    this.renderThreeRating = this.renderThreeRating.bind(this);
    this.renderFourRating = this.renderFourRating.bind(this);
    this.renderFiveRating = this.renderFiveRating.bind(this);
    this.state = {
      starOne: blankStar,
      starTwo: blankStar,
      starThree: blankStar,
      starFour: blankStar,
      starFive: blankStar,
      ratingText: "Select your rating."
    };
  }

  componentDidMount() {
    this.props.fetchRestaurant(this.props.restaurantId);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm(user);
  }

  renderErrors() {
    return (
      <ul className="errors">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  renderOneRating() {
    this.setState({ starOne: badStar, ratingText: "Yuck! Never again!" });
  }

  renderTwoRating() {
    this.setState(
      { starOne: badStar,
        starTwo: badStar,
        ratingText: "Meh. I've experienced better." }
      );
  }

  renderThreeRating() {
    this.setState(
      { starOne: decentStar,
        starTwo: decentStar,
        starThree: decentStar,
        ratingText: "A-OK." }
      );
  }

  renderFourRating() {
    this.setState(
      { starOne: goodStar,
        starTwo: goodStar,
        starThree: goodStar,
        starFour: goodStar,
        ratingText: "Yay! I'm a fan." }
      );
  }

  renderFiveRating() {
    this.setState(
      { starOne: goodStar,
        starTwo: goodStar,
        starThree: goodStar,
        starFour: goodStar,
        starFive: goodStar,
        ratingText: "Wow! It doesn't get any better." }
      );
  }

  render() {
    let pictures = this.props.restaurant.pictures;
    return (
      <div className="review-page">
        <h3>Write a Review</h3>
        <div className="review-business-photos-info">
          <img className="review-photo" src={pictures[Object.keys(pictures)[Object.keys(pictures).length - 1]].url}/>
          <ul className="review-business-info">
            <li className="review-business-name">{this.props.restaurant.name}</li>
            <li>{this.props.restaurant.price} • {this.props.restaurant.categories}</li>
            <li>{this.props.restaurant.address}</li>
            <li>{this.props.restaurant.city_params}</li>
          </ul>
        </div>
        Your review
        <div className="review-form">
          <div className="review-form-rating">
            <ul className="review-rating">
              <li id="star-one" onMouseOver={this.renderOneRating}>{this.state.starOne()}</li>
              <li id="star-two" onMouseOver={this.renderTwoRating}>{this.state.starTwo()}</li>
              <li id="star-three" onMouseOver={this.renderThreeRating}>{this.state.starThree()}</li>
              <li id="star-four" onMouseOver={this.renderFourRating}>{this.state.starFour()}</li>
              <li id="star-five" onMouseOver={this.renderFiveRating}>{this.state.starFive()}</li>
              <li id="rating-text">{this.state.ratingText}</li>
            </ul>
          </div>
        </div>
      </div>
    );
  }

}

export default withRouter(ReviewForm);
