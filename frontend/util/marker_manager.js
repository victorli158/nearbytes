import React from 'react';

class MarkerManager {
  constructor (map) {
    this.map = map;
    this.markers = [];
  }

  updateMarkers(restaurants) {
    this.restaurants = restaurants;
    this._restaurantsToAdd(this.restaurants).forEach((restaurant) => (
      this._createMarkerFromRestaurant(restaurant)
    ));
    this._markersToRemove().forEach((restaurant) => (
      this._removeMarker(restaurant)
    ));
  }

  _restaurantsToAdd(restaurants) {
    const currentRestaurants = this.markers.map( marker => marker.restaurantId );
    return restaurants.filter( restaurant => !currentRestaurants.includes(restaurant.id) );
  }

  _createMarkerFromRestaurant(restaurant) {
    const pos = new google.maps.LatLng(restaurant.lat, restaurant.long);
    const marker = new google.maps.Marker({
      position: pos,
      map: this.map,
      restaurantId: restaurant.id,
      title: restaurant.name,
    });
    this.markers.push(marker);

    let contentString = (
      "<section class='info-message'>" +
      `<text class = "small-title">${restaurant.name}</text><br/>` +
      `<text>${restaurant.address}</text><br/>` +
      `<text>${restaurant.city_params}</text>` +
      "</section>"
    );

    let infowindow = new google.maps.InfoWindow({
      content: contentString,
      disableAutoPan: true
    });

    marker.addListener('mouseover', function() {
      infowindow.open(this.map, marker);
    });

    marker.addListener('click', function() {
      window.location.href = `/#/restaurants/${marker.restaurantId}`;
    });

    marker.addListener('mouseout', function() {
      infowindow.close(this.map, marker);
    });

    let restaurantItem = document.getElementById(`restaurant_index_item-${restaurant.id}`);
    if (restaurantItem) {
      restaurantItem.onmouseenter = () => {
        this.markers.forEach(otherMarker => {
          otherMarker.setOpacity(0.3);
        });
        marker.setOpacity(1);
        infowindow.open(this.map, marker);
      };
      restaurantItem.onmouseleave = () => {
        this.markers.forEach(otherMarker => {
          otherMarker.setOpacity(1);
        });
        infowindow.close(this.map, marker);
      };
    }
  }

  _markersToRemove(){
    const restaurantIds = this.restaurants.map( restaurant => restaurant.id );
    return this.markers.filter( marker => !restaurantIds.includes(marker.restaurantId) );
  }

  _removeMarker(marker) {
    const idx = this.markers.indexOf( marker );
    this.markers[idx].setMap(null);
    this.markers.splice(idx, 1);
  }

}

export default MarkerManager;
