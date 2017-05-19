import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import { signup, login, logout } from './actions/session_actions';
import { fetchRestaurants, fetchRestaurant, createImage } from './util/restaurant_api_util';

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  window.store = configureStore();
  const root = document.getElementById('root');
  // window.login = login;
  // window.logout = logout;
  // window.signup = signup;
  window.fetchRestaurants = fetchRestaurants;
  window.fetchRestaurant = fetchRestaurant;
  window.createImage = createImage;
  ReactDOM.render(<Root store={ store }/>, root);
});
