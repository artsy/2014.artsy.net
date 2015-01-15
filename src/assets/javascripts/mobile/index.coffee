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

    $('.info').on 'click', (e) ->
      $(e.target).closest('.pane').toggleClass 'is-captioned'
