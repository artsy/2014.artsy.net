imagesLoaded = require 'imagesloaded'

module.exports = class Backdrop
  constructor: ({ @$el, @$window, @$body }) ->
    # Wait for images to load before scaling
    @$el.imagesLoaded => @scale()

  scale: ->
    { width, height } = dimensions = @dimensions()

    setTimeout =>
      @$el
        .addClass('is-ready')
        .css
          transform: "scale(#{@factor(dimensions)})"
          marginTop: -(height / 2)
          marginLeft: -(width / 2)
    , 1

  dimensions: ->
    if @$el.is ':visible'
      width: @$el.outerWidth(), height: @$el.outerHeight()
    else
      $clone = @$el.clone()
      $clone.css 'visibility', 'hidden'
      @$body.append $clone
      dimensions = width: $clone.outerWidth(), height: $clone.outerHeight()
      $clone.remove()
      dimensions

  factor: (dimensions) ->
    { width, height } = dimensions
    ratio = width / height
    viewportRatio = @$window.width() / @$window.height()
    direction = if viewportRatio > ratio then 'width' else 'height'
    factor = @$window[direction]() / dimensions[direction]
    Math.ceil(factor * 100) / 100
