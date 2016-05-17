


var FetchBikeData = function (event) {
  event.preventDefault();
  
  var myURL = '/api/calculator';
  $.ajax({
    type: "GET",
    dataType: 'json',
    url: myURL,
    success: function(result) {
      console.log(result);
    }
  });
};

FetchBikeData();
console.log('hello');



console.log('hello');


FetchBikeData.prototype.renderTime = function (result) {
  total_time = Math.round.(( this.distance * 43.33) / 3600);
};
