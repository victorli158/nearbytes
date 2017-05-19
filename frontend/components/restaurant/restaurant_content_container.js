import { connect } from 'react-redux';
import { fetchRestaurant, fetchRestaurants, createImage } from '../../actions/restaurant_actions';
// import { fetchReviews } from '../../actions/review_actions';
import RestaurantContent from './restaurant_content';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.restaurant,
  restaurants: state.restaurants,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  fetchRestaurants: () => dispatch(fetchRestaurants()),
  fetchRestaurant: (id) => dispatch(fetchRestaurant(id)),
  createImage: (data) => dispatch(createImage(data))
  // fetchReviews: (id) => dispatch(fetchReviews(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RestaurantContent);
