# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  fetchBikeData = ->
    myURL = '/api/calculator'
    $.ajax
      type: 'GET'
      dataType: 'json'
      url: myURL
      success: (result) ->
        console.log result
        return
    return

  fetchBikeData()
  return
