window.jQuery = $ = require 'jquery'
Device = require './device'
Web = require './web'
Mobile = require './mobile'

$ -> if Device.isTouch() then new Mobile else new Web
