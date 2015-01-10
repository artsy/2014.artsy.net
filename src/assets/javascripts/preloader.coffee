$ = require 'jquery'
imagesLoaded = require 'imagesloaded'

module.exports = class Preloader
  constructor: ->
    @$el = $('#preloader')
    @$body = $('body')

  until: (selector, cb) ->
    imagesLoaded selector, =>
      @done()
      cb()

  done: ->
    @$el.attr 'data-state', 'done'
    @$body.attr 'data-state', 'done'
    setTimeout (=> @$el.remove()), 500
