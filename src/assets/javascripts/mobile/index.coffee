$ = require 'jquery'
Preloader = require '../preloader'

module.exports = class Mobile
  constructor: ->
    $('body').addClass 'is-mobile'
    new Preloader(application: 'mobile').until '.pane--backdrop'
