$ = require 'jquery'
Kubrick = require 'kubrick-js'
Preloader = require '../preloader'
Backdrops = require '../backdrops'
timeline = require './timeline'
Share = require '../share'

module.exports = class Web
  constructor: ->
    @setupTimeline()
    @setupShare()
    @setupKeyboard()

    new Preloader(application: 'web').until '#frame-introduction', =>
      @backdrops = new Backdrops $els: $('.frame--backdrop img')

  setupTimeline: ->
    @timeline = Kubrick timeline
    $('#frame-introduction').show() # Force display of initial frame

  setupShare: ->
    new Share
      $twitter: $('.conclusion-share--twitter')
      $facebook: $('.conclusion-share--facebook')

  setupKeyboard: ->
    # @setupAltNav()
    $(document).on 'keydown', (e) =>
      switch e.which
        when 71 # 'g'
          @toggleGrid()
        # when 37 # 'left'
        #   e.preventDefault()
        #   @scrollToPrev()
        # when 39 # 'right'
        #   e.preventDefault()
        #   @scrollToNext()

  toggleGrid: ->
    $('.grid').toggle()

  scrollToPrev: ->
    @cursor--
    @scrollTo @cursor

  scrollToNext: ->
    @cursor++
    @scrollTo @cursor

  scrollTo: (position) ->
    @cursor = 0 if position < 0
    @cursor = @positions.length - 1 if position >= @positions.length
    $('html, body').animate { scrollTop: ($(window).height() * (@positions[@cursor] / 100)) }, 1000

  setupAltNav: ->
    @cursor = 0
    @positions = []
    timeline.reduce (memo, frame) =>
      @positions.push memo if frame.key
      memo += parseInt frame.duration
      memo
    , 0
