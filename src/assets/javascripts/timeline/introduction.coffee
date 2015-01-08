module.exports = [
  {
    stage: '#frame-1' # Out
    duration: '100%'
    actors: [
      { element: '.frame--text', opacity: 0, translateY: [0, -50] }
      { element: '.frame-1--backdrop', opacity: [1, 0] }
      { element: '.intro-chevron', rotate: [45, 45], opacity: -1, translateY: -10 }
    ]
  }
  {
    stage: '#frame-2' # In
    duration: '100%'
    actors: [
      { element: '.frame--text', opacity: [0, 1], translateY: [50, 0] }
    ]
  }
  {
    stage: '#frame-2' # Out
    duration: '100%'
    actors: [
      { element: '.frame--text', opacity: [1, 0], translateY: [0, -50] }
      { element: '.frame-2--backdrop', opacity: 0 }
    ]
  }
  {
    stage: '#frame-3' # In
    duration: '100%'
    actors: [
      { element: '.frame--text', opacity: [0, 1], translateY: [50, 0] }
    ]
  }
  {
    stage: '#frame-3' # Out
    duration: '100%'
    actors: [
      { element: '.frame--text', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
  {
    stage: '#frame-4' # In
    duration: '100%'
    actors: [
      { element: '.frame--text', opacity: [0, 1], translateY: [50, 0] }
    ]
  }
  {
    stage: '#frame-4' # Out
    duration: '100%'
    actors: [
      { element: '.frame--text', opacity: [1, 0], translateY: [0, -50] }
      { element: '.frame--subheadline', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
]
