$ = require 'jquery'
Backdrop = require './backdrop'

module.exports = class Backdrops
  constructor: ({ @$els }) ->
    @$window = $(window)
    @$body = $('body')

    @backdrops = @$els.map (i, el) =>
      new Backdrop $el: $(el), $window: @$window, $body: @$body

    @$window.on 'resize', @scale # Debounce this...

  scale: =>
    for backdrop in @backdrops
      backdrop.scale()
