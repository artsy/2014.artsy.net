$ = require 'jquery'
kubrick = require 'kubrick-js'
timeline = require './timeline'
{ isTouch } = require './device'

$ ->
  if isTouch()
    $('body').addClass 'is-touch'
  else
    kubrick timeline
    $('body').addClass 'is-scroll'
