$(document).ready(function() {
  var space_address = $('#space_address').get(0);

  if (space_address) {
    var autocomplete = new google.maps.places.Autocomplete(space_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(space_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#space_address').trigger('blur').val(components.address);
}
