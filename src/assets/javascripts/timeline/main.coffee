module.exports = [
  # Frame #1
  {
    # In
    stage: '#frame-1', duration: '100%'
    actors: [
      { element: '.frame--subheadline', opacity: [0, 1], translateY: [50, 0] }
      { element: '.frame--vcenter', opacity: [0, 2], translateY: [25, 0] }
      { element: '#columns', opacity: [0, 1] }
      { element: '.column-0', translateY: [-25, 0] }
      { element: '.column-1', translateY: [25, 0] }
      { element: '.column-2', translateY: [-25, 0] }
      { element: '.column-3', translateY: [25, 0] }
    ]
  }
  {
    # Hold
    stage: '#frame-1', duration: '200%', easing: 'linear'
    actors: [
      { element: '.column-0', translateY: [0, 75] }
      { element: '.column-1', translateY: [0, -75] }
      { element: '.column-2', translateY: [0, 75] }
      { element: '.column-3', translateY: [0, -75] }
    ]
  }
  {
    # Out
    stage: '#frame-1', duration: '100%'
    actors: [
      { element: '.frame--vcenter', opacity: [2, 0], translateY: [0, -100] }
      { element: '#columns', opacity: [1, 0] }
      { element: '.column-0', translateY: [75, 150] }
      { element: '.column-1', translateY: [-75, -150] }
      { element: '.column-2', translateY: [75, 150] }
      { element: '.column-3', translateY: [-75, -150] }
    ]
  }

  # Frame #2
  {
    # In
    stage: '#frame-2', duration: '100%'
    actors: [
      { element: '.frame--vcenter', opacity: [0, 2], translateY: [25, 0] }
    ]
  }
  {
    # Hold
    stage: '#frame-2', duration: '100%'
  }
  {
    # Out
    stage: '#frame-2', duration: '100%'
    actors: [
      { element: '.frame--vcenter', opacity: [2, 0], translateY: [0, -25] }
    ]
  }

  # Frame #3
  {
    # In
    stage: '#frame-3', duration: '100%'
    actors: [element: '.frame--vcenter', opacity: [0, 2], translateY: [25, 0]]
  }
  { stage: '#frame-3', duration: '100%' } # Hold
  {
    # Out
    stage: '#frame-3', duration: '100%'
    actors: [element: '.frame--vcenter', opacity: [2, 0], translateY: [0, -25]]
  }

  # Frame #4
  {
    # In
    stage: '#frame-4', duration: '100%'
    actors: [element: '.frame--vcenter', opacity: [0, 2], translateY: [25, 0]]
  }
  { stage: '#frame-4', duration: '100%' } # Hold
  {
    # Out
    stage: '#frame-4', duration: '100%'
    actors: [element: '.frame--vcenter', opacity: [2, 0], translateY: [0, -25]]
  }

  # Frame #5
  {
    # In
    stage: '#frame-5', duration: '100%'
    actors: [element: '.frame--vcenter', opacity: [0, 2], translateY: [25, 0]]
  }
  { stage: '#frame-5', duration: '100%' } # Hold
  {
    # Out
    stage: '#frame-5', duration: '100%'
    actors: [element: '.frame--vcenter', opacity: [2, 0], translateY: [0, -25]]
  }

  # Frame #6
  {
    # In
    stage: '#frame-6', duration: '100%'
    actors: [element: '.frame--vcenter', opacity: [0, 2], translateY: [26, 0]]
  }
  { stage: '#frame-6', duration: '100%' } # Hold
  {
    # Out
    stage: '#frame-6', duration: '100%'
    actors: [element: '.frame--vcenter', opacity: [2, 0], translateY: [0, -25]]
  }
]
