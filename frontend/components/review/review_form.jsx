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
    this.setOneRating = this.setOneRating.bind(this);
    this.setTwoRating = this.setTwoRating.bind(this);
    this.setThreeRating = this.setThreeRating.bind(this);
    this.setFourRating = this.setFourRating.bind(this);
    this.setFiveRating = this.setFiveRating.bind(this);
    this.resetRating = this.resetRating.bind(this);
    this.returnToRestaurant = this.returnToRestaurant.bind(this);
    this.renderErrors = this.renderErrors.bind(this);
    this.state = this.props.review || {
      starOne: blankStar,
      starTwo: blankStar,
      starThree: blankStar,
      starFour: blankStar,
      starFive: blankStar,
      ratingNum: 0,
      ratingText: "Select your rating.",
      errors: this.props.reviewErrors
    };
  }

  componentDidMount() {
    this.props.fetchRestaurant(this.props.restaurantId);
    this.props.clearReviewErrors();
  }

  componentWillReceiveProps(newProps) {
    if ( newProps.restaurantId !== this.props.restaurantId ) {
      this.props.fetchRestaurant(newProps.restaurantId);
    }
    if ( newProps.reviewErrors.length !== 0 ) {
      this.setState({ errors: newProps.reviewErrors });
    }
  }

  update(property) {
    return e => {
      e.preventDefault();
      this.setState({[property]: e.target.value});
    };
  }

  handleSubmit(e) {
    const form = {
      body: this.state.body,
      rating: this.state.ratingNum,
      user_id: this.props.currentUser.id,
      restaurant_id: this.props.restaurantId
    };
    e.preventDefault();
    if (this.props.review) {
      form.id = this.props.review.id;
    }
    this.props.clearReviewErrors();
    this.props.createReview(form).then(
      () => {
        if (this.state.errors.length === 0) {
          return this.props.history.replace(`/restaurants/${this.props.restaurantId}`);
        }
      }
    );
  }

  renderErrors() {
    if (this.props.reviewErrors) {
      return(
        <ul className="review-errors">
          {this.props.reviewErrors.map((error, i) => (
            <li key={`error-${i}`} className= "error-list">
              <text>{error}</text>
            </li>
          ))}
        </ul>
      );
    }
  }

  returnToRestaurant() {
    return this.props.history.replace(`/restaurants/${this.props.restaurantId}`);
  }

  renderOneRating() {
    this.setState(
      { starOne: badStar,
        starTwo: blankStar,
        starThree: blankStar,
        starFour: blankStar,
        starFive: blankStar,
        ratingText: "Yuck! Never again!" });
  }

  renderTwoRating() {
    this.setState(
      { starOne: badStar,
        starTwo: badStar,
        starThree: blankStar,
        starFour: blankStar,
        starFive: blankStar,
        ratingText: "Meh. I've experienced better." }
      );
  }

  renderThreeRating() {
    this.setState(
      { starOne: decentStar,
        starTwo: decentStar,
        starThree: decentStar,
        starFour: blankStar,
        starFive: blankStar,
        ratingText: "A-OK." }
      );
  }

  renderFourRating() {
    this.setState(
      { starOne: goodStar,
        starTwo: goodStar,
        starThree: goodStar,
        starFour: goodStar,
        starFive: blankStar,
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

  setOneRating() {
    this.setState(
      { starOne: badStar,
        starTwo: blankStar,
        starThree: blankStar,
        starFour: blankStar,
        starFive: blankStar,
        ratingText: "Yuck! Never again!",
        ratingNum: 1
      }
    );
  }

  setTwoRating() {
    this.setState(
      { starOne: badStar,
        starTwo: badStar,
        starThree: blankStar,
        starFour: blankStar,
        starFive: blankStar,
        ratingText: "Meh. I've experienced better.",
        ratingNum: 2
      }
    );
  }

  setThreeRating() {
    this.setState(
      { starOne: decentStar,
        starTwo: decentStar,
        starThree: decentStar,
        starFour: blankStar,
        starFive: blankStar,
        ratingText: "A-OK.",
        ratingNum: 3
      }
    );
  }

  setFourRating() {
    this.setState(
      { starOne: goodStar,
        starTwo: goodStar,
        starThree: goodStar,
        starFour: goodStar,
        starFive: blankStar,
        ratingText: "Yay! I'm a fan.",
        ratingNum: 4
      }
    );
  }

  setFiveRating() {
    this.setState(
      { starOne: goodStar,
        starTwo: goodStar,
        starThree: goodStar,
        starFour: goodStar,
        starFive: goodStar,
        ratingText: "Wow! It doesn't get any better.",
        ratingNum: 5
      }
    );
  }

  resetRating() {
    switch(this.state.ratingNum) {
      case 5:
        this.setFiveRating();
        break;
      case 4:
        this.setFourRating();
        break;
      case 3:
        this.setThreeRating();
        break;
      case 2:
        this.setTwoRating();
        break;
      case 1:
        this.setOneRating();
        break;
      default:
        this.setState(
          { starOne: blankStar,
            starTwo: blankStar,
            starThree: blankStar,
            starFour: blankStar,
            starFive: blankStar,
            ratingText: "Select your rating."
          }
        );
    }
  }

  render() {
    let pictures = this.props.restaurant.pictures;
    return (
      <div className="review-page">
        {this.props.reviewErrors ? this.renderErrors() : this.props.clearReviewErrors()}
        <h3 className="review-heading">Write a Review</h3>
        <div className="review-business-photos-info">
          <img className="review-photo" src={pictures[Object.keys(pictures)[Object.keys(pictures).length - 1]].url}/>
          <ul className="review-business-info">
            <li className="review-business-name" onClick={this.returnToRestaurant}>{this.props.restaurant.name}</li>
            <li>{this.props.restaurant.price} • {this.props.restaurant.categories}</li>
            <li>{this.props.restaurant.address}</li>
            <li>{this.props.restaurant.city_params}</li>
          </ul>
        </div>
        <div className="review-form-page">
          <h4 className="review-heading">Your review</h4>
          <div className="review-form-submit">
            <div className="review-form-rating">
              <ul className="review-rating">
                <li id="star-one" onMouseOver={this.renderOneRating}
                                  onClick={this.setOneRating}
                                  onMouseOut={this.resetRating}>{this.state.starOne()}</li>
                <li id="star-two" onMouseOver={this.renderTwoRating}
                                  onClick={this.setTwoRating}
                                  onMouseOut={this.resetRating}>{this.state.starTwo()}</li>
                <li id="star-three" onMouseOver={this.renderThreeRating}
                                    onClick={this.setThreeRating}
                                    onMouseOut={this.resetRating}>{this.state.starThree()}</li>
                <li id="star-four" onMouseOver={this.renderFourRating}
                                   onClick={this.setFourRating}
                                   onMouseOut={this.resetRating}>{this.state.starFour()}</li>
                <li id="star-five" onMouseOver={this.renderFiveRating}
                                   onClick={this.setFiveRating}
                                   onMouseOut={this.resetRating}>{this.state.starFive()}</li>
                <li id="rating-text">{this.state.ratingText}</li>
              </ul>
              <form className="review-form" onSubmit={this.handleSubmit}>
                <textarea className="review-body-input" value={this.state.body} onChange={this.update('body')}
                  placeholder="Your review helps others learn about great local businesses.
                  Please don't review this business if you received a freebie for writing this review, or if
                  you're connected in any way to the owner or employees."/>
              </form>
            </div>
            <button className="review-submit" onClick={this.handleSubmit}>Post Review</button>
          </div>
        </div>
      </div>
    );
  }

}

export default withRouter(ReviewForm);
