$ = require 'jquery'
Preloader = require './preloader'
Backdrops = require './backdrops'
Share = require './share'

module.exports = class Scroll
  constructor: ->
    $('body').addClass 'is-scroll'

    @setupShare()

    new Preloader(application: 'web').until '#frame-introduction', =>
      @backdrops = new Backdrops $els: $('.frame--backdrop img')

  setupShare: ->
    new Share
      $twitter: $('.conclusion-share--twitter')
      $facebook: $('.conclusion-share--facebook')
