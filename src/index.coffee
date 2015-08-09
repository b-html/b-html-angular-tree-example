require 'angular'
templates = require './templates'
appView = require './views/app-view'
nodeView = require './views/node-view'

angular
.module 'bApp', [
  templates.name
]
.directive 'bApp', appView
.directive 'bNode', nodeView
