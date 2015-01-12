$ = require 'jquery'
Hammer = require 'hammerjs'
Preloader = require '../preloader'
Carousel = require './carousel'

module.exports = class Mobile
  constructor: ->
    $('body').addClass 'is-mobile'

    new Preloader(application: 'mobile').until '.pane--backdrop'

    carousel = new Carousel $el: $('#panes')

    $('.info').each ->
      hammer = new Hammer this
      hammer.on 'tap', (e) ->
        $(e.target).closest('.pane').toggleClass 'is-captioned'
