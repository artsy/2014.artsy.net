$ = require 'jquery'
{ opacity, backdropScale } = require './transitions'

# Setup header
$header = null
$ -> $header = $('.header')

module.exports = [
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-backdrop-0', opacity: opacity.out, scale: backdropScale.a }
      { element: '#introduction-backdrop-1', scale: backdropScale.a }
      { element: '#introduction-credit-0', opacity: [0, 0] } # Hidden for now
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
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-1', scale: backdropScale.b }
      { element: '#introduction-headline-0', opacity: opacity.in, translateY: [30, 0] }
      { element: '#introduction-credit-1', opacity: opacity.in }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-backdrop-1', scale: backdropScale.c, opacity: opacity.out }
      { element: '#introduction-backdrop-2', scale: backdropScale.a }
      { element: '#introduction-headline-0', opacity: opacity.out, translateY: [0, -30] }
      { element: '#introduction-credit-1', opacity: opacity.out }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-2', scale: backdropScale.b }
      { element: '#introduction-headline-1', opacity: opacity.in, translateY: [30, 0] }
      { element: '#introduction-credit-2', opacity: opacity.in }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-backdrop-2', scale: backdropScale.c, opacity: opacity.out }
      { element: '#introduction-backdrop-3', scale: backdropScale.a }
      { element: '#introduction-headline-1', opacity: opacity.out, translateY: [0, -30] }
      { element: '#introduction-credit-2', opacity: opacity.out }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-3', scale: backdropScale.b }
      { element: '#introduction-headline-2', opacity: opacity.in, translateY: [30, 0] }
      { element: '#introduction-credit-3', opacity: opacity.in }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-backdrop-3', scale: backdropScale.c, opacity: opacity.out }
      { element: '#introduction-headline-2', opacity: opacity.out, translateY: [0, -30] }
      { element: '#introduction-credit-3', opacity: opacity.out }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-headline-3', opacity: opacity.in, translateY: [30, 0] }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '#introduction-headline-3', opacity: opacity.out, translateY: [0, -30] }
    ]
  }
]