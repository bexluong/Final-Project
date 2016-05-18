$('#button').on('click', function(e){
  e.preventDefault();
  $.ajax({
    url: '/api/bike',
    dataType: 'json',
    success: function (result) {
      console.log(result);
  }
});



});
