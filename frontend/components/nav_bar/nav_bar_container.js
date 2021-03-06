import { connect } from 'react-redux';
import { login, logout, signup, clearErrors } from '../../actions/session_actions';
import { fetchRestaurants } from '../../actions/restaurant_actions';
import NavBar from './nav_bar';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser,
  guest: { username: 'Guest', password: 'password' }
});

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  login: (user) => dispatch(login(user)),
  signup: (user) => dispatch(signup(user)),
  clearErrors: (user) => dispatch(clearErrors(user)),
  fetchRestaurants: (params) => dispatch(fetchRestaurants(params))
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);
