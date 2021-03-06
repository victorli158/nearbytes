import React from 'react';
import MarkerManager from "../../util/marker_manager.js";

class RestaurantsMap extends React.Component{
  constructor (props) {
    super(props);
  }

  componentDidMount() {
    let mapOptions = {
      center: { lat: 37.785046, lng: -122.432093 },
      zoom: 12
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.MarkerManager = new MarkerManager(this.map);
    this.MarkerManager.updateMarkers(this.props.restaurants);
    google.maps.event.addListener(this.map, 'idle', () => {
      const { north, south, east, west } = this.map.getBounds().toJSON();
      const bounds = {
        northEast: { lat: north, lng: east },
        southWest: { lat: south, lng: west } };
    });
  }

  componentDidUpdate(){
    this.MarkerManager.updateMarkers(this.props.restaurants);
  }

  render() {
    return(
      <div className='map-container' ref={ map => this.mapNode = map }>

      </div>
    );
  }
}

export default RestaurantsMap;
