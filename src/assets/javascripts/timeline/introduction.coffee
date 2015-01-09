module.exports = [
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#backdrop-1', opacity: [1, 0] }
      { element: '#caption-1', opacity: [1, 0], translateY: [0, -50] }
      { element: '.intro-chevron', rotate: [45, 45], opacity: -1, translateY: -10 }
    ]
  }
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#backdrop-2', opacity: 1 }
      { element: '#caption-2', opacity: [0, 1], translateY: [50, 0] }
      { element: '#credit-1', opacity: [0, 1] }
    ]
  }
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#backdrop-2', opacity: [1, 0], scale: 1 }
    ]
  }
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#backdrop-3', opacity: [1, 0] }
      { element: '#caption-2', opacity: [1, 0], translateY: [0, -50] }
      { element: '#credit-1', opacity: [1, 0] }
    ]
  }
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#caption-3', opacity: [0, 1], translateY: [50, 0] }
      { element: '#credit-2', opacity: [0, 1] }
    ]
  }
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#backdrop-4', opacity: [1, 0] }
    ]
  }
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#credit-2', opacity: [1, 0] }
      { element: '#caption-3', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#backdrop-5', opacity: [1, 0] }
      { element: '#caption-4', opacity: [0, 1], translateY: [50, 0] }
    ]
  }
  {
    stage: '#frame-1'
    duration: '100%'
    actors: [
      { element: '#backdrop-6', opacity: [1, 0] }
      { element: '#caption-4', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
]