# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.community = window.community or {}
community.votes =
  init: ->
  submit: (vote_value) ->
    $('input#vote_value').attr('value', vote_value)
    $('form').submit()

$(window).load community.votes.init

