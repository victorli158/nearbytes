import * as RestaurantAPIUtil from '../util/restaurant_api_util';

export const RECEIVE_ALL_RESTAURANTS = 'RECEIVE_ALL_RESTAURANTS';
export const RECEIVE_RESTAURANT = 'RECEIVE_RESTAURANT';
export const RECEIVE_PICTURE = 'RECEIVE_PICTURE';

export const receiveAllRestaurants = (restaurants) => ({
  type: RECEIVE_ALL_RESTAURANTS,
  restaurants
});

export const receiveRestaurant = (restaurant) => ({
  type: RECEIVE_RESTAURANT,
  restaurant
});

export const receivePicture = (picture) => ({
  type: RECEIVE_PICTURE,
  picture
});

export const fetchRestaurants = (filters) => dispatch => (
  RestaurantAPIUtil.fetchRestaurants(filters).then(restaurants => (
    dispatch(receiveAllRestaurants(restaurants))
  ))
);

export const fetchRestaurant = (id) => dispatch => (
  RestaurantAPIUtil.fetchRestaurant(id).then(restaurant => {
    return dispatch(receiveRestaurant(restaurant));
  })
);

export const createImage = (data) => dispatch => (
  RestaurantAPIUtil.createImage(data).then(picture => (
    dispatch(receivePicture(picture))
  ))
);
