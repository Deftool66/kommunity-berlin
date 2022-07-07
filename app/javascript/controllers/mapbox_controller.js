import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    // console.log(this.containerTarget, this.element)
    mapboxgl.accessToken = this.apiKeyValue;
    const bounds = [
      [13.026825, 52.362987], // Southwest coordinates
      [13.705695, 52.670207] // Northeast coordinates
    ];
    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/siefke1/ckwcatvgc0tlj15su3lgk84xw',
      maxBounds: bounds,
      zoom: 20
    });
    this._addMarkersToMap();
    this._fitMapToMarkers();
    this.map.addControl(new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl
    }));
  }

  // resize() {
  //   console.log("hello from resize")
  //   this.map.resize();
  // }

  _addMarkersToMap() {
    this.markersValue.forEach((marker) => {
 
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
    });
  }

  _fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 500, duration: 0 });
  }
}
