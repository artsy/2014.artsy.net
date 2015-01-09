$ = require 'jquery'
initializeTimeline = require 'kubrick-js'
timeline = require './timeline'

module.exports = class Scroll
  constructor: ->
    @timeline()
    $('body').addClass 'is-scroll'

  timeline: ->
    initializeTimeline timeline
    $('.frame').first().show() # Force display of initial frame
