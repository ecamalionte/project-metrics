# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.community = window.community or {}
community.projects =
  init: ->

  show_points_binder: (id, points, priority, stat_path_uri) ->
    label = $('#priority_' + id)
    label.mouseenter ->
      $(this).html(points)
    label.mouseleave ->
      $(this).html(priority)
    label.click ->
      window.location = stat_path_uri
      #$('#statModal').modal({show: true, remote: stat_path_uri })

$(window).load community.projects.init

