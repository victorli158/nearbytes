import { combineReducers } from 'redux';
import RestaurantsReducer from './restaurants_reducer';
import RestaurantReducer from './restaurant_reducer';
import SessionReducer from './session_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  restaurants: RestaurantsReducer,
  restaurant: RestaurantReducer
});

export default RootReducer;
