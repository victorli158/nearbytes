import { combineReducers } from 'redux';
import RestaurantsReducer from './restaurants_reducer';
import RestaurantReducer from './restaurant_reducer';
import SessionReducer from './session_reducer';
import reviewReducer from './review_reducer';
import reviewErrorReducer from './review_errors_reducer';
import filterReducer from './filter_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  restaurants: RestaurantsReducer,
  restaurant: RestaurantReducer,
  reviews: reviewReducer,
  reviewErrors: reviewErrorReducer,
  filters: filterReducer
});

export default RootReducer;
