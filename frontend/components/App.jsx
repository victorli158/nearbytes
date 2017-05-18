import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import SessionFormContainer from './session_form/session_form_container';
import { Route, Link, Switch, Redirect } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import NavBarContainer from './nav_bar/nav_bar_container';
import { Footer } from './footer.jsx';
import { Home } from './home/home';

const App = () => (
  <div className="container">
    <header className="nav-bar">
      <NavBarContainer />
    </header>
    <Switch>
      <AuthRoute exact path="/" component={Home}/>
      <AuthRoute path="/login" component={SessionFormContainer}/>
      <AuthRoute path="/signup" component={SessionFormContainer}/>
    </Switch>
    <Footer />
  </div>
);

export default App;
