$ = require 'jquery'
Preloader = require '../preloader'
Carousel = require './carousel'

module.exports = class Mobile
  constructor: ->
    $('body').addClass 'is-mobile'

    new Preloader(application: 'mobile').until '.pane--backdrop'

    new Carousel $el: $('#panes')
