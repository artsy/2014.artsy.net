$ = require 'jquery'
Scroll = require './scroll'
{ isTouch } = require './device'

$ ->
  if isTouch()
    $('body').addClass 'is-touch'
  else
    scroll = new Scroll