# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready', ->
  $('.header').click ->
    $(this).next().slideDown()
    $(this).find('.close-btn').show()
    return

  $('.close-btn').click ->
    $(this).parents('.chat').find('.content').slideUp()
    $(this).hide()
    return false
  return