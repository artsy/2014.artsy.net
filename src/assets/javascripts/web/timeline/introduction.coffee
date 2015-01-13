module.exports = [
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-0', opacity: [1, 0], scale: [1, 1.05] }
      { element: '#introduction-backdrop-1', scale: [1, 1.05] }
      { element: '#introduction-headline-0', opacity: [1, 0], translateY: [0, -50] }
      { element: '.intro-chevron', rotate: [45, 45], opacity: -1, translateY: -10 }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-1', scale: [1.05, 1.1] }
      { element: '#introduction-headline-1', opacity: [0, 1], translateY: [50, 0] }
      { element: '#introduction-credit-0', opacity: [0, 1] }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-1', scale: [1.1, 1.15] }
      { element: '#introduction-headline-1', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-1', opacity: [1, 0], scale: [1.15, 1.2] }
      { element: '#introduction-backdrop-2', scale: [1, 1.05] }
      { element: '#introduction-credit-0', opacity: [1, 0] }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-2', scale: [1.05, 1.1] }
      { element: '#introduction-headline-2', opacity: [0, 1], translateY: [50, 0] }
      { element: '#introduction-credit-1', opacity: [0, 1] }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-2', scale: [1.1, 1.15] }
      { element: '#introduction-headline-2', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-credit-1', opacity: [1, 0] }
      { element: '#introduction-backdrop-2', scale: [1.15, 1.2] }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-2', opacity: [1, 0], scale: [1.2, 1.25] }
      { element: '#introduction-headline-3', opacity: [0, 1], translateY: [50, 0] }
      { element: '#introduction-backdrop-3', scale: [1, 1.05] }
    ]
  }
  {
    stage: '#frame-introduction', duration: '100%', easing: 'linear'
    actors: [
      { element: '#introduction-backdrop-3', opacity: [1, 0], scale: [1.05, 1.1] }
      { element: '#introduction-headline-3', opacity: [1, 0], translateY: [0, -50] }
    ]
  }
]