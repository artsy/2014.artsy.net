device = require '../../device'

generateScalingValues = ->
  if device.isFirefox()
    a: [1, 1]
    b: [1, 1]
    c: [1, 1]
    d: [1, 1]
  else
    a: [1, 1.05]
    b: [1.05, 1.1]
    c: [1.1, 1.15]
    d: [1.15, 1.2]

module.exports =
  translateY:
    in: [30, 10]
    hold: [10, -10]
    out: [-10, -30]

  opacity:
    in: [0, 1]
    out: [1, 0]

  backdropScale: generateScalingValues()

  bisectedColumnsIn: (id) -> [
    { element: "##{id}--columns", opacity: [0, 1] }
    { element: "##{id}--column-0", translateY: [10, 5] }
    { element: "##{id}--column-1", translateY: [-10, -5] }
  ]

  bisectedColumnsHold: (id) -> [
    { element: "##{id}--column-0", translateY: [5, -5] }
    { element: "##{id}--column-1", translateY: [-5, 5] }
  ]

  bisectedColumnsOut: (id) -> [
    { element: "##{id}--columns", opacity: [1, 0] }
    { element: "##{id}--column-0", translateY: [-5, -10] }
    { element: "##{id}--column-1", translateY: [5, 10] }
  ]
