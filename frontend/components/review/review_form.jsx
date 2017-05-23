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
    this.starOne = blankStar;
    this.starTwo = blankStar;
    this.starThree = blankStar;
    this.starFour = blankStar;
    this.starFive = blankStar;
    this.ratingText = "Select your rating.";
  }

  //component did mount fetch restaurant stuff

  // componentWillReceiveProps(nextProps) {
  //   if (nextProps.loggedIn) {
  //     this.props.history.push('/');
  //   }
  // }

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

  // navLink() {
  //   if (this.props.formType === 'login') {
  //     return <Link className="link" to="/signup">Sign Up</Link>;
  //   } else {
  //     return <Link className="link" to="/login">Log In</Link>;
  //   }
  // }

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
    this.starOne = badStar;
    this.ratingText = "Yuck! Never again!";
  }

  renderTwoRating() {
    this.starOne = badStar;
    this.starTwo = badStar;
    this.ratingText = "Meh. I've experienced better.";
  }

  renderThreeRating() {
    this.starOne = decentStar;
    this.starTwo = decentStar;
    this.starThree = decentStar;
    this.ratingText = "A-OK.";
  }

  renderFourRating() {
    this.starOne = goodStar;
    this.starTwo = goodStar;
    this.starThree = goodStar;
    this.starFour = goodStar;
    this.ratingText = "Yay! I'm a fan.";
  }

  renderFiveRating() {
    this.starOne = goodStar;
    this.starTwo = goodStar;
    this.starThree = goodStar;
    this.starFour = goodStar;
    this.starFive = goodStar;
    this.ratingText = "Wow! It doesn't get any better.";
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
              <li id="star-one" onMouseOver={this.renderOneRating}>{this.starOne()}</li>
              <li id="star-two" onMouseOver={this.renderTwoRating}>{this.starTwo()}</li>
              <li id="star-three" onMouseOver={this.renderThreeRating}>{this.starThree()}</li>
              <li id="star-four" onMouseOver={this.renderFourRating}>{this.starFour()}</li>
              <li id="star-five" onMouseOver={this.renderFiveRating}>{this.starFive()}</li>
              <li id="rating-text">{this.ratingText}</li>
            </ul>
          </div>
        </div>
      </div>
    );
  }

}

export default withRouter(ReviewForm);
