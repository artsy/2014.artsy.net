$ = require 'jquery'
imagesLoaded = require 'imagesloaded'

module.exports = class Preloader
  constructor: ({ @application }) ->
    @$el = $('#preloader')
    (@$body = $('body'))
      .attr 'data-application', @application

  until: (selector, cb) ->
    imagesLoaded selector, =>
      @done()
      cb?()

  done: ->
    @$el.attr 'data-state', 'done'
    @$body.attr 'data-state', 'done'
    setTimeout (=> @$el.remove()), 500
