$ = require 'jquery'
initializeTimeline = require 'kubrick-js'
timeline = require './timeline'

module.exports = class Scroll
  constructor: ->
    @timeline()
    $('body').addClass 'is-scroll'

  timeline: ->
    initializeTimeline(timeline)
    $('#frame-1').show() # Force display of initial frame

  backdrop: ($img) ->
    @$viewport ?= $(window)
    ratio = $img.width() / $img.height()
    viewportRatio = @$viewport.width() / @$viewport.height()
    direction = if viewportRatio > ratio then 'width' else 'height'
    factor = @$viewport[direction]() / $img[direction]()
    x = Math.ceil(factor * 100) / 100
    console.log x
