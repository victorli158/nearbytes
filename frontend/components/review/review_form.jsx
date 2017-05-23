import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  // componentWillReceiveProps(nextProps) {
  //   if (nextProps.loggedIn) {
  //     this.props.history.push('/');
  //   }
  // }

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

  // navLink() {
  //   if (this.props.formType === 'login') {
  //     return <Link className="link" to="/signup">Sign Up</Link>;
  //   } else {
  //     return <Link className="link" to="/login">Log In</Link>;
  //   }
  // }

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
      <div className="review-page">
        Write a Review
        <div className="review-business-info">
          
        </div>

      </div>
    );
  }

}

export default withRouter(ReviewForm);
