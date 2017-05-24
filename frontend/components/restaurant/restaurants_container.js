import { connect } from 'react-redux';
import Restaurants from './restaurants.jsx';
import { fetchRestaurants } from '../../actions/restaurant_actions.js';


const mapStateToProps = (state) => ({
  restaurants: Object.keys(state.restaurants).map(id => state.restaurants[id]),
});

const mapDispatchToProps = (dispatch) => ({
  fetchRestaurants: (params) => dispatch(fetchRestaurants(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Restaurants);
