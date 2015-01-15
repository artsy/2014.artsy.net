module.exports =
  translateY: in: [30, 10], hold: [10, -10], out: [-10, -30]

  opacity: in: [0, 1], out: [1, 0]

  bisectedColumnsIn: (id) -> [
    { element: "##{id}--columns", opacity: [0, 1] }
    { element: "##{id}--column-0", translateY: [50, 25] }
    { element: "##{id}--column-1", translateY: [-25, 0] }
  ]

  bisectedColumnsHold: (id) -> [
    { element: "##{id}--column-0", translateY: [25, 0] }
    { element: "##{id}--column-1", translateY: [0, 25] }
  ]

  bisectedColumnsOut: (id) -> [
    { element: "##{id}--columns", opacity: [1, 0] }
    { element: "##{id}--column-0", translateY: [0, -10] }
    { element: "##{id}--column-1", translateY: [25, 50] }
  ]
