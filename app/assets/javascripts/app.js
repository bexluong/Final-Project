// $(function () {
// //
// // // var OptimalCommute = function () {
// // //   this.url = 'https://maps.googleapis.com/maps/api/directions/json?origin= ' + $('#originAddress').val() + '&destination=' + $('#destinationAddress').val() +  '&mode=bicycling&key=AIzaSyDaljhwqza0E_tfS7tkPupnpmDzWM47unQ';
// // //
// // // };
// //
// // var fetchBikeData = function () {
// //   var bikeData = this;
// //   var myURL = 'https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=40.6655101,-73.89188969999998&destinations=40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626&key=AIzaSyDaljhwqza0E_tfS7tkPupnpmDzWM47unQ';
// //   $.ajax({
// //     type: "GET",
// //     dataType: 'jsonp',
// //     jsonpCallback: 'callback',
// //     cache: false,
// //     url: myURL,
// //     success: function(result) {
// //       console.log('bitch');
// //       console.log(result);
// //       debugger
// //     }
// //   });
// // };
// // fetchBikeData();
// //
//
//
//
//
// function init() {
//   var input = document.getElementById('locationTextField');
//   var autocomplete = new google.maps.places.Autocomplete(input);
// }
//
// google.maps.event.addDomListener(window, 'load', init);
//
// function init() {
//   var input = document.getElementById('destinationTextField');
//   var autocomplete = new google.maps.places.Autocomplete(input);
// }
//
// google.maps.event.addDomListener(window, 'load', init);
//
//
// });

img1.ready().then(function() {
  // loaded
}, function() {
  // failed
});

// and…
Promise.all([img1.ready(), img2.ready()]).then(function() {
  // all loaded
}, function() {
  // one or more failed
});
