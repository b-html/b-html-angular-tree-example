require 'angular'
templates = require './templates'
appView = require './views/app-view'

angular
.module 'bApp', [
  templates.name
]
.directive 'bApp', appView
