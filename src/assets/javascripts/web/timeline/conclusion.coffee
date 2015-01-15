{ opacity } = require './transitions'

module.exports = [
  { # In
    stage: '#frame-conclusion', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: [30, 0] }
    ]
  }
]