import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push('/');
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm(user);
  }

  navLink() {
    if (this.props.formType === 'login') {
      return <Link className="link" to="/signup">Sign Up</Link>;
    } else {
      return <Link className="link" to="/login">Log In</Link>;
    }
  }

  renderErrors() {
    return (
      <ul className="errors">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <div className="session-page">
        {this.renderErrors()}
        <div className="form-logo-container">
          <form onSubmit={this.handleSubmit} className="login-form-box">
            { this.props.formType === "login" ? (
              <div>
                <h3>Log In to NearBytes</h3>
                <p className="sub-heading">New to NearBytes? {this.navLink()}</p>
              </div>
            ) : (
              <div>
              <h3>Sign Up for NearBytes</h3>
              <p className="sub-heading">Already on NearBytes? {this.navLink()}</p>
            </div>
            )
          }
            <div>
              <br/>
              <label>Username
                <br/>
                <br/>
                <input className="login-input" type="text"
                  value={this.state.username}
                  onChange={this.update('username')}/>
              </label>
              <br/>
              <br/>
              <label>Password
                <br/>
                <br/>
                <input className="login-input"
                  type="password"
                  value={this.state.password}
                  onChange={this.update('password')}/>
              </label>
                <br/>
                { this.props.formType === 'login' ? (
                  <p className="disclaimer">
                    By logging in, you agree to NearBytes's Terms of Service and Privacy Policy
                  </p>
                ) : (
                  <p className="disclaimer">
                    By signing up, you agree to NearBytes's Terms of Service and Privacy Policy
                  </p>
                )}
                { this.props.formType === 'login' ? (
                  <div className="submit-div">
                    <input className="submit" type="submit" value="Log In" />
                  </div>
                ) : (
                  <div className="submit-div">
                    <input className="submit" type="submit" value="Sign Up" />
                  </div>
                )}
            </div>
          </form>
          <img className="graphic"
            src="https://image.freepik.com/free-vector/two-people-in-a-restaurant_459-162.jpg"
            title="Copyright Rosa Hernandez (2017)"/>
        </div>
      </div>
    );
  }

}

export default withRouter(SessionForm);
