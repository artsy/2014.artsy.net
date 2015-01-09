module.exports = [
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#backdrop-0', opacity: [1, 0], scale: [1, 1.05] }
      { element: '#backdrop-1', scale: [1, 1.05] }
      { element: '#caption-0', opacity: [1, 0], translateY: [0, -50] }
      { element: '.intro-chevron', rotate: [45, 45], opacity: -1, translateY: -10 }
    ]
  }
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#backdrop-1', scale: [1.05, 1.1] }
      { element: '#caption-1', opacity: [0, 1], translateY: [50, 0] }
      { element: '#credit-0', opacity: [0, 1] }
    ]
  }
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#backdrop-1', scale: [1.1, 1.15] }
      { element: '#caption-1', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#backdrop-1', opacity: [1, 0], scale: [1.15, 1.2] }
      { element: '#backdrop-2', scale: [1, 1.05] }
      { element: '#credit-0', opacity: [1, 0] }
    ]
  }
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#backdrop-2', scale: [1.05, 1.1] }
      { element: '#caption-2', opacity: [0, 1], translateY: [50, 0] }
      { element: '#credit-1', opacity: [0, 1] }
    ]
  }
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#backdrop-2', scale: [1.1, 1.15] }
      { element: '#caption-2', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#credit-1', opacity: [1, 0] }
      { element: '#backdrop-2', scale: [1.15, 1.2] }
    ]
  }
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#backdrop-2', opacity: [1, 0], scale: [1.2, 1.25] }
      { element: '#caption-3', opacity: [0, 1], translateY: [50, 0] }
      { element: '#backdrop-3', scale: [1, 1.05] }
    ]
  }
  {
    stage: '#frame-0', duration: '100%', easing: 'linear'
    actors: [
      { element: '#backdrop-3', opacity: [1, 0], scale: [1.05, 1.1] }
      { element: '#caption-3', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
]