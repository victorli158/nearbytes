import { connect } from 'react-redux';
import SearchBar from './search_bar';
import { fetchRestaurants } from '../actions/restaurant_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  restaurants: Object.keys(state.restaurants).map(id => state.restaurants[id]),
});

const mapDispatchToProps = dispatch => ({
  fetchRestaurants: (params)=> dispatch(fetchRestaurants(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar);
