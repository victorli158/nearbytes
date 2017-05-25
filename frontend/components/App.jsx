import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import SessionFormContainer from './session_form/session_form_container';
import { Route, Link, Switch, Redirect } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import NavBarContainer from './nav_bar/nav_bar_container';
import { Footer } from './footer.jsx';
import HomeContainer from './home/home_container';
import RestaurantContainer from './restaurant/restaurant_container';
import ReviewFormContainer from './review/review_form_container';
import RestaurantsContainer from './restaurant/restaurants_container';

const App = () => (
  <div className="container">
    <header className="nav-bar">
      <Route path="/" component={NavBarContainer} />
    </header>
    <Switch>
      <Route exact path="/" component={HomeContainer}/>
      <Route exact path="/restaurants/" component={RestaurantsContainer}/>
      <Route exact path="/restaurants/:id" component={RestaurantContainer}/>
      <ProtectedRoute path="/restaurants/:id/reviews/new" component={ReviewFormContainer}/>
      <AuthRoute path="/login" component={SessionFormContainer}/>
      <AuthRoute path="/signup" component={SessionFormContainer}/>
    </Switch>
    <Footer/>
  </div>
);

export default App;
