$ = require 'jquery'
imagesLoaded = require 'imagesloaded'

module.exports = class Preloader
  constructor: ({ @application }) ->
    @$el = $('#preloader')

    (@$body = $('body'))
      .attr 'data-application', @application

    if @application is 'mobile' then @kill.web() else @kill.mobile()

    @setImages()

  setImages: ->
    $('img[data-src]').each ->
      src = ($img = $(this)).data('src')
      $img.attr 'src', src

  kill:
    mobile: -> $('#mobile').remove()
    web: -> $('#web').remove()

  until: (selector, cb) ->
    imagesLoaded selector, =>
      @done()
      cb?()

  done: ->
    @$el.attr 'data-state', 'done'
    @$body.attr 'data-state', 'done'
    setTimeout (=> @$el.remove()), 500
