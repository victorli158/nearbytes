import * as RestaurantAPIUtil from '../util/restaurant_api_util';

export const RECEIVE_ALL_RESTAURANTS = 'RECEIVE_ALL_RESTAURANTS';
export const RECEIVE_RESTAURANT = 'RECEIVE_RESTAURANT';
export const RECEIVE_PHOTO = 'RECEIVE_PHOTO';

export const receiveAllRestaurants = (restaurants) => ({
  type: RECEIVE_ALL_RESTAURANTS,
  restaurants
});

export const receiveRestaurant = (restaurant) => ({
  type: RECEIVE_RESTAURANT,
  restaurant
});

export const receivePhoto = (photo) => ({
  type: RECEIVE_PHOTO,
  photo
});

export const fetchRestaurants = (params) => dispatch => (
  RestaurantAPIUtil.fetchRestaurants(params).then(restaurants => (
    dispatch(receiveAllRestaurants(restaurants))
  ))
);

export const fetchRestaurant = (id) => dispatch => (
  RestaurantAPIUtil.fetchRestaurant(id).then(restaurant => (
    dispatch(receiveRestaurant(restaurant))
  ))
);

export const createImage = (data) => dispatch => (
  RestaurantAPIUtil.createImage(data).then(photo => (
    dispatch(receivePhoto(photo))
  ))
);
