//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require_tree .


$(document).ready(function() {
  $('.attachinary-input').attachinary();
  $('.datepicker').datepicker();
});
