$ = require 'jquery'
Scroll = require './scroll'

$ ->
  # Grid debugger
  $(document).on 'keypress', (e) -> $('.grid').toggle() if e.which is 103

  new Scroll
