$ = require 'jquery'
attachFastClick = require 'fastclick'
Preloader = require '../preloader'
Carousel = require './carousel'
Backdrops = require '../backdrops'

module.exports = class Mobile
  constructor: ->
    $('body').addClass 'is-mobile'

    preloader = new Preloader application: 'mobile'
    preloader.until '.pane--backdrop'

    carousel = new Carousel $el: $('#panes')
    backdrops = new Backdrops $els: $('.pane--backdrop img')

    @bindEvents()

  bindEvents: ->
    attachFastClick document.body

    $('.pane--info').on 'click', (e) ->
      e.preventDefault()
      e.stopPropagation()
      ($pane = $(e.target).closest('.pane')).addClass 'is-captioned'

      $(document).one 'click', (e) ->
        e.preventDefault()
        $pane.removeClass 'is-captioned'
        false
