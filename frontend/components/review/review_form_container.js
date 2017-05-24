import { connect } from 'react-redux';
import { fetchRestaurant } from '../../actions/restaurant_actions';
import { fetchReviews, createReview, updateReview } from '../../actions/review_actions';
import { clearReviewErrors } from '../../actions/review_actions';
import ReviewForm from './review_form';

const mapStateToProps = (state, ownProps) => {
  // let formType = ownProps.params.reviewId ? "Update Review" : "New Review";
  // let review = state.restaurant.reviews.find((el) => el.id == ownProps.params.reviewId );
  return {
    // review,
    // formType,
    restaurant: state.restaurant,
    currentUser: state.session.currentUser,
    restaurantId: ownProps.match.params.id,
    reviewErrors: state.reviewErrors
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    fetchRestaurant: (id) => dispatch(fetchRestaurant(id)),
    fetchReviews: (id) => dispatch(fetchReviews(id)),
    createReview: (id, review) => dispatch(createReview(id, review)),
    clearReviewErrors: () => dispatch(clearReviewErrors())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReviewForm);
