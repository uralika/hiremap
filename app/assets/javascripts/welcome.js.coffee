# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

initialize = ->
  navigator.geolocation.getCurrentPosition (position) ->
    mapOptions =
      center: new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
      zoom: 15

    map = new google.maps.Map document.getElementById('map-canvas'), mapOptions

    onBoundsChanged = ->
      bounds = map.getBounds()
      # $.get("http://localhost:3000/startups?sw[0]=#{bounds.ga.b}&sw[1]=#{bounds.ta.b}&ne[0]=#{bounds.ga.d}&ne[1]=#{bounds.ta.d}")
      $.get("http://localhost:3000/startups?user[location][sw]=#{bounds.ga.b}, #{bounds.ta.b}&user[location][ne]=#{bounds.ga.d}, #{bounds.ta.d}")

    google.maps.event.addListener map, 'bounds_changed', onBoundsChanged

google.maps.event.addDomListener window, 'load', initialize
