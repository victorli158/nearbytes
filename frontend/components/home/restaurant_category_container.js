import { connect } from 'react-redux';
import RestaurantCategory from './restaurant_category';
import { fetchRestaurants, fetchRestaurant } from '../../actions/restaurant_actions';

const mapDispatchToProps = dispatch => ({
  fetchRestaurants: (params) => dispatch(fetchRestaurants(params)),
  fetchRestaurant: (id) => dispatch(fetchRestaurant(id))
});

export default connect(
  mapDispatchToProps
)(RestaurantCategory);
