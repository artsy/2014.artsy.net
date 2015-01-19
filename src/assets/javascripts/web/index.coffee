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
    $(document).on 'keydown', (e) =>
      switch e.which
        when 71 # 'g'
          @toggleGrid()

  toggleGrid: ->
    $('.grid').toggle()
