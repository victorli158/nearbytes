import React from 'react';

class SingleRestaurantMap extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    const mapOptions = {
      center: {lat: this.props.restaurants[0].lat, lng: this.props.restaurants[0].long },
      zoom: 15
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
  }

  render() {
    return (
      <div className="single-restaurant-map" ref={ map => this.mapNode = map }>

      </div>
    );
  }
}

export default SingleRestaurantMap;
