module.exports = [
  {
    stage: '#frame-5' # In
    duration: '100%'
    actors: [
      { element: '.frame--subheadline', opacity: [0, 1], translateY: [50, 0] }
      { element: '.frame--body', opacity: [0, 2], translateY: [25, 0] }
    ]
  }
  {
    stage: '#frame-5' # Hold
    duration: '100%'
  }
  {
    stage: '#frame-5' # Out
    duration: '100%'
    actors: [
      { element: '.frame--body', opacity: [2, 0], translateY: [0, -25] }
    ]
  }
  {
    stage: '#frame-6' # In
    duration: '100%'
    actors: [
      { element: '.frame--body', opacity: [0, 2], translateY: [25, 0] }
      { element: '.column-1', opacity: [0, 1], translateY: [25, 0] }
      { element: '.column-2', opacity: [0, 1], translateY: [-25, 0] }
      { element: '.column-3', opacity: [0, 1], translateY: [25, 0] }
      { element: '.column-4', opacity: [0, 1], translateY: [-25, 0] }
    ]
  }
  {
    stage: '#frame-6' # Hold
    duration: '200%'
    easing: 'linear'
    actors: [
      { element: '.column-1', translateY: [0, -75] }
      { element: '.column-2', translateY: [0, 75] }
      { element: '.column-3', translateY: [0, -75] }
      { element: '.column-4', translateY: [0, 75] }
    ]
  }
  {
    stage: '#frame-6' # Out
    duration: '100%'
    actors: [
      { element: '.frame--body', opacity: [2, 0], translateY: [0, -100] }
      { element: '.column-1', opacity: [1, 0], translateY: [-75, -150] }
      { element: '.column-2', opacity: [1, 0], translateY: [75, 150] }
      { element: '.column-3', opacity: [1, 0], translateY: [-75, -150] }
      { element: '.column-4', opacity: [1, 0], translateY: [75, 150] }
    ]
  }
]
