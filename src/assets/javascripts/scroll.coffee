$ = require 'jquery'
initializeTimeline = require 'kubrick-js'
Preloader = require './preloader'
timeline = require './timeline'

module.exports = class Scroll
  constructor: ->
    @timeline()
    @$window = $(window)
    @$body = $('body')

    @$body.addClass 'is-scroll'

    preloader = new Preloader
    preloader.until '#frame-0', =>
      @$window.on 'resize', @scaleBackdrops # Debounce this...
      @scaleBackdrops()

  timeline: ->
    initializeTimeline timeline
    $('#frame-0').show() # Force display of initial frame

  scaleBackdrops: =>
    that = this
    $('.frame--backdrop img').each ->
      $this = $(this)
      $this.css
        transform: "scale(#{that.scale($this)})"
        marginTop: -($this.height() / 2)
        marginLeft: -($this.width() / 2)

  scale: ($backdrop) ->
    @$window ?= $(window)
    ratio = $backdrop.width() / $backdrop.height()
    viewportRatio = @$window.width() / @$window.height()
    direction = if viewportRatio > ratio then 'width' else 'height'
    factor = @$window[direction]() / $backdrop[direction]()
    Math.ceil(factor * 100) / 100
