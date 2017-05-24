import React from 'react';

class SearchBar extends React.Component {
  constructor (props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = ({
      inputVal: ""
    });
  }

  update(property) {
    return e => {
      e.preventDefault();
      this.setState({[property]: e.target.value});
    };
  }

  handleInput (e) {
    this.setState({inputVal: e.currentTarget.value});
  }


  handleSubmit (e) {
    e.preventDefault();
    this.props.fetchRestaurants(this.state.inputVal);
    return this.props.history.replace("/restaurants");
  }

  // toggleClass () {
  //   if (this.props.location === "/") {
  //     return "Home-Search";
  //   }
  //   else {
  //     return "Search-Form";
  //   }
  // }

  render () {
    return(
      <div className="search-bar">
        <form className="search-form" onSubmit={this.handleSubmit}>
          <input className="search-input" type="text" onChange={this.update('inputVal')} placeholder = "Find restaurants, Japanese, $$, "/>
          <input className="search-button" type="image" alt="Submit" src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495666302/search_1_qz1lmz.svg" />
        </form>
      </div>
  );
  }
}

export default SearchBar;
