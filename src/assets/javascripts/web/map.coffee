$ = require 'jquery'

module.exports = class Map
  paths: []

  period: 10

  constructor: ({ @$paths, @split }) ->
    @build()

  randomDelay: ->
    Math.floor(Math.random() * (@period * 1000 + 1)) + 'ms'

  build: ->
    @length = @$paths.length
    for path in @$paths
      $el = $(path)
      length = path.getTotalLength()
      $el.css
        # Set animated length to 0
        strokeDasharray: length
        strokeDashoffset: length
        # Stagger animation over the course of the `@period`
        transitionDelay: @randomDelay()
      @paths.push $el: $el, length: length

  # Not using this for now
  update: (progress) ->
    i = Math.floor(progress * (@length - 1) / 100)

    fadeIn = @paths.slice(0, i)
    for path in fadeIn
      path.$el.css 'stroke-dashoffset', 0

    fadeOut = @paths.slice((i + 1), (@paths.length - 1))
    for path in fadeOut
      path.$el.css 'stroke-dashoffset', path.length
