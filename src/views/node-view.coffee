class Controller
  @$inject: []

  constructor: ->

  toggleChildren: ->
    @model.open = !@model.open

  addChild: ->
    @model.children.push
      open: true
      name: 'new stuff'
      children: []

module.exports = [
  '$compile'
  '$templateCache'
  (
    $compile
    $templateCache
  ) ->
    bindToController: true
    compile: ->
      childTemplate = $templateCache.get '/templates/node-view-child.html'
      compiled = null
      (scope, element) ->
        compiled ?= $compile childTemplate
        compiled scope, (clone) ->
          element.find('ul').append clone
    controller: Controller
    controllerAs: 'c'
    restrict: 'E'
    scope:
      model: '='
    templateUrl: '/templates/node-view.html'
]
