$ = require 'jquery'
{ opacity, translateY, backdropScale } = require './transitions'

# Setup header
$header = null
$ -> $header = $('.header')

module.exports = [
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-backdrop-0', opacity: opacity.out, scale: backdropScale.a }
      { element: '#introduction-backdrop-1', scale: backdropScale.a }
      { element: '#introduction-credit-0', opacity: [0.6, 0] }
      { element: '.intro-chevron', rotate: [45, 45], opacity: -1, translateY: -10 }
      { element: '.introduction--logo', opacity: opacity.out, translateY: [0, -30] }
      {
        # `#header-proxy` is an empty element that we'll use to just call out to the header
        # Adding some events to (enter/exit scene, etc) would be a much nicer solution
        element: '#header-proxy', callback: (progress, duration) ->
          if progress >= 99 then $header.addClass('is-active') else $header.removeClass('is-active')
      }
    ]
  }
  { # In
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-1', scale: backdropScale.b }
      { element: '#introduction-headline-0', opacity: opacity.in, translateY: translateY.in }
      { element: '#introduction-credit-1', opacity: [0, 0.6] }
    ]
  }
  { # Hold
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-backdrop-1', scale: backdropScale.c }
      { element: '#introduction-headline-0', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-1', scale: backdropScale.d, opacity: opacity.out }
      { element: '#introduction-backdrop-2', scale: backdropScale.a }
      { element: '#introduction-headline-0', opacity: opacity.out, translateY: translateY.out }
      { element: '#introduction-credit-1', opacity: [0.6, 0] }
    ]
  }
  { # In
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-2', scale: backdropScale.b }
      { element: '#introduction-headline-1', opacity: opacity.in, translateY: translateY.in }
      { element: '#introduction-credit-2', opacity: [0, 0.6] }
    ]
  }
  { # Hold
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-backdrop-2', scale: backdropScale.c }
      { element: '#introduction-headline-1', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-2', scale: backdropScale.d, opacity: opacity.out }
      { element: '#introduction-backdrop-3', scale: backdropScale.a }
      { element: '#introduction-headline-1', opacity: opacity.out, translateY: translateY.out }
      { element: '#introduction-credit-2', opacity: [0.6, 0] }
    ]
  }
  { # In
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-3', scale: backdropScale.b }
      { element: '#introduction-headline-2', opacity: opacity.in, translateY: translateY.in }
      { element: '#introduction-credit-3', opacity: [0, 0.6] }
    ]
  }
  { # Hold
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-backdrop-3', scale: backdropScale.c }
      { element: '#introduction-headline-2', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-3', scale: backdropScale.d, opacity: opacity.out }
      { element: '#introduction-headline-2', opacity: opacity.out, translateY: translateY.out }
      { element: '#introduction-credit-3', opacity: [0.6, 0] }
    ]
  }
  { # In
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-headline-3', opacity: opacity.in, translateY: translateY.in }
    ]
  }
  { # Hold
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-headline-3', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-headline-3', opacity: opacity.out, translateY: translateY.out }
    ]
  }
]