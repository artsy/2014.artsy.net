$ = require 'jquery'
attachFastClick = require 'fastclick'
Preloader = require '../preloader'
Carousel = require './carousel'
Backdrops = require '../backdrops'
Share = require '../share'

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

    $('.pane').on 'click', (e) ->
      $(this).removeClass 'is-captioned'

    $('.pane--info').on 'click', (e) ->
      e.stopPropagation()
      $(e.currentTarget).closest('.pane').toggleClass 'is-captioned'

    new Share $facebook: $('.pane--share_facebook'), $twitter: $('.pane--share_twitter')