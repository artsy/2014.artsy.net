$ = require 'jquery'

module.exports = class Progress
  constructor: ({ @$el, @length }) -> #

  template: (active = false) ->
    "<div class='progress--dot #{if active then 'is-active' else 'is-inactive'}'></div>"

  build: (active = 0) ->
    @dots = []

    for i in [0..@length - 1]
      @dots.push @template(i is active)

    @$el.html @$dots = $(@dots.join(''))

  update: (active) ->
    $(@$dots.removeClass('is-active').get(active))
      .addClass('is-active')
