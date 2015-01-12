$ = require 'jquery'
Backdrop = require './backdrop'

module.exports = class Backdrops
  constructor: ({ @$els }) ->
    @$window = $(window)

    @backdrops = @$els.map (i, el) =>
      new Backdrop $el: $(el), $window: @$window

    @$window.on 'resize', @scale # Debounce this...

  scale: =>
    for backdrop in @backdrops
      backdrop.scale()
