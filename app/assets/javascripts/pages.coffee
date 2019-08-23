# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
    $('#hello-btn').click -> 
        console.log('hey there')
        some_function()
        $('.container').toggle()
        $.ajax
            type: 'POST'
            url: '/blogs'
            data: 'blogs[title]=Hey from coffeescript!'
    return

some_function = ->
    console.log('im in another func')