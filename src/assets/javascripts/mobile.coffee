$ = require 'jquery'
Preloader = require './preloader'
Backdrops = require './backdrops'

module.exports = class Mobile
  constructor: ->
    $('body').addClass 'is-mobile'

    new Preloader().until '#frame-0', =>
      @backdrops = new Backdrops $els: $('.frame--backdrop img')
