imagesLoaded = require 'imagesloaded'

module.exports = class Backdrop
  constructor: ({ @$el, @$window, @$body }) ->
    # Wait for images to load before scaling
    @$el.imagesLoaded =>
      @scale()

  scale: ->
    [width, height] = dimensions = @dimensions()

    @$el
      .addClass('is-ready')
      .css
        transform: "scale(#{@factor(dimensions)})"
        marginTop: -(height / 2)
        marginLeft: -(width / 2)

  dimensions: ->
    if @$el.is ':visible'
      [@$el.outerWidth(), @$el.outerHeight()]
    else
      $clone = @$el.clone()
      $clone.css 'visibility', 'hidden'
      @$body.append $clone
      dimensions = [$clone.outerWidth(), $clone.outerHeight()]
      $clone.remove()
      dimensions

  factor: ([width, height]) ->
    ratio = width / height
    viewportRatio = @$window.width() / @$window.height()
    direction = if viewportRatio > ratio then 'width' else 'height'
    factor = @$window[direction]() / @$el[direction]()
    Math.ceil(factor * 100) / 100
