module.exports = class Backdrop
  constructor: ({ @$el, @$window }) ->
    @scale()

  scale: ->
    @$el.css
      transform: "scale(#{@factor()})"
      marginTop: -(@$el.height() / 2)
      marginLeft: -(@$el.width() / 2)

  factor: ->
    ratio = @$el.width() / @$el.height()
    viewportRatio = @$window.width() / @$window.height()
    direction = if viewportRatio > ratio then 'width' else 'height'
    factor = @$window[direction]() / @$el[direction]()
    Math.ceil(factor * 100) / 100
