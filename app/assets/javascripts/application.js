// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function () {

// var OptimalCommute = function () {
//   this.url = 'https://maps.googleapis.com/maps/api/directions/json?origin= ' + $('#originAddress').val() + '&destination=' + $('#destinationAddress').val() +  '&mode=bicycling&key=AIzaSyDaljhwqza0E_tfS7tkPupnpmDzWM47unQ';
//
// };

var fetchBikeData = function () {
  var bikeData = this;
  var myURL = 'https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=40.6655101,-73.89188969999998&destinations=40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626&key=AIzaSyDaljhwqza0E_tfS7tkPupnpmDzWM47unQ';
  $.ajax({
    type: "GET",
    dataType: 'json',
    cache: false,
    url: myURL,
    success: function(result) {
      console.log(result);

    }
  });
};
fetchBikeData();

});
