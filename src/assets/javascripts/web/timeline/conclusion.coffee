{ opacity } = require './transitions'

module.exports = [
  { # In
    stage: '#frame-conclusion', duration: '200%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: [30, 0] }
      { element: '.frame--backdrop', opacity: opacity.in, scale: [1.025, 1] }
      { element: '.frame--backdrop-credit', opacity: opacity.in }
    ]
  }
  { # Hold
    stage: '#frame-conclusion', duration: '100%', easing: 'linear', key: true
    actors: [
    ]
  }
]
