$ = require 'jquery'
Hammer = require 'hammerjs'
Preloader = require '../preloader'
Carousel = require './carousel'
Backdrops = require '../backdrops'

module.exports = class Mobile
  constructor: ->
    $('body').addClass 'is-mobile'

    new Preloader(application: 'mobile').until '.pane--backdrop'

    carousel = new Carousel $el: $('#panes')
    backdrops = new Backdrops $els: $('.pane--backdrop img')

    $('.info').each ->
      hammer = new Hammer this
      hammer.on 'tap', (e) ->
        $(e.target).closest('.pane').toggleClass 'is-captioned'
