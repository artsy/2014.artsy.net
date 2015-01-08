module.exports =
  isTouch: ->
    'ontouchstart' of window or 'onmsgesturechange' of window

  isRetina: ->
    (window.devicePixelRatio or 1) > 1
