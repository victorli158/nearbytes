import { connect } from 'react-redux';
import RestaurantContent from './restaurant_content';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.restaurant,
  currentUser: state.session.currentUser
});

export default connect(
  mapStateToProps
)(RestaurantContent);
