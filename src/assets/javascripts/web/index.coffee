$ = require 'jquery'
kubrick = require 'kubrick-js'
Preloader = require '../preloader'
Backdrops = require '../backdrops'
timeline = require './timeline'
Share = require '../share'

module.exports = class Web
  constructor: ->
    @timeline()
    @share()
    @debugGrid()

    new Preloader(application: 'web').until '#frame-introduction', =>
      @backdrops = new Backdrops $els: $('.frame--backdrop img')

  timeline: ->
    kubrick timeline
    $('#frame-introduction').show() # Force display of initial frame

  share: ->
    new Share
      $twitter: $('.conclusion-share--twitter')
      $facebook: $('.conclusion-share--facebook')

  debugGrid: ->
    $(document).on 'keypress', (e) ->
      $('.grid').toggle() if e.which is 103 # 'g'
