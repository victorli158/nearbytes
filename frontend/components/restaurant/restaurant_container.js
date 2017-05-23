import { connect } from 'react-redux';
import { fetchRestaurant, createImage, fetchRestaurants } from '../../actions/restaurant_actions';
// import { fetchReviews } from '../../actions/review_actions';
import Restaurant from './restaurant';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.restaurant,
  currentUser: state.session.currentUser,
  restaurantId: ownProps.match.params.id
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
)(Restaurant);
