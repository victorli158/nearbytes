import merge from 'lodash/merge';
import { RECEIVE_ALL_RESTAURANTS } from '../actions/restaurant_actions';

const RestaurantsReducer = (oldState = {}, action) => {
 Object.freeze(oldState);
 let newRestaurant;
 switch (action.type) {
   case RECEIVE_ALL_RESTAURANTS:
     return merge({}, action.restaurants);
   default:
     return oldState;
 }
};

export default RestaurantsReducer;
