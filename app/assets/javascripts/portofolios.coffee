# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = undefined

ready = -> 
    $('.sortable').sortable()
    return 
#declaring a function that will be saved in ready

$(document).ready ready