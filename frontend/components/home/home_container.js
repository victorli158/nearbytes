import { connect } from 'react-redux';
import Home from './home';
import { fetchRestaurants, fetchRestaurant } from '../../actions/restaurant_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  restaurants: Object.keys(state.restaurants).map(id => state.restaurants[id]),
});

const mapDispatchToProps = dispatch => ({
  fetchRestaurants: (params) => dispatch(fetchRestaurants(params)),
  fetchRestaurant: (id) => dispatch(fetchRestaurant(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
