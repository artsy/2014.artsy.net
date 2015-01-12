$ = require 'jquery'
kubrick = require 'kubrick-js'
Preloader = require '../preloader'
Backdrops = require './backdrops'
timeline = require './timeline'

module.exports = class Web
  constructor: ->
    @timeline()

    # Debug grid (press 'g')
    $(document).on 'keypress', (e) ->
      $('.grid').toggle() if e.which is 103

    new Preloader(application: 'web').until '#frame-0', =>
      @backdrops = new Backdrops $els: $('.frame--backdrop img')

  timeline: ->
    kubrick timeline
    $('#frame-0').show() # Force display of initial frame
