$ = require 'jquery'
Hammer = require 'hammerjs'
Progress = require './progress'

module.exports = class Carousel
  currentPage: 0
  offset: 0
  distance: 0
  turnThreshold: 0

  constructor: ({ @$el }) ->
    @reset()

    @pageCount = (@$panes = @$el.children()).length
    @$window = $(window)
    @width = @$window.width()

    @bindEvents()

    @progress = new Progress $el: $('#progress'), length: @pageCount
    @progress.build(@currentPage)

    @activateCurrentPane()

  reset: ->
    $(document)
      .scrollTop(0)
      .scrollLeft(0)

  bindEvents: ->
    @$window.on 'resize', =>
      @width = @$window.width()
      @gotoPage @currentPage, false # Reset to current page

    @hammer = new Hammer @$el[0]
    @hammer.get('pan').set direction: Hammer.DIRECTION_ALL

    @hammer.on 'panleft panright', @onPan
    @hammer.on 'panend', @onPanEnd

  onPan: (e) =>
    @distance = e.distance
    @updateOffset @offset + e.deltaX

  onPanEnd: (e) =>
    if Math.abs(@distance / @width) > @turnThreshold
      @currentPage++ if e.direction is Hammer.DIRECTION_LEFT
      @currentPage-- if e.direction is Hammer.DIRECTION_RIGHT
      @gotoPage @currentPage, true

  prevPage: ->
    @currentPage--
    @gotoPage @currentPage, true

  nextPage: ->
    @currentPage++
    @gotoPage @currentPage, true

  totalPages: ->
    @pageCount

  updateOffset: (offset, snap) ->
    properties = transform: "translate3d(#{offset}px,0,0)"
    properties.transitionDuration = if snap then '0.5s' else '0s'
    @$el.css properties

  gotoPage: (page, snap) ->
    # Update page
    @currentPage = page
    @currentPage = 0 if @currentPage < 0
    @currentPage = @pageCount - 1 if @currentPage >= @pageCount

    # Update offset
    @offset = -(@currentPage * @width)
    @updateOffset @offset, snap

    # Notify pane
    @activateCurrentPane()

    # Update progress
    @progress.update @currentPage

  activateCurrentPane: ->
    @$panes.removeClass('is-active').eq(@currentPage).addClass('is-active')
