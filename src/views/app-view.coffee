class Controller
  @$inject: []

  constructor: ->
    @root =
      name: 'node 1'
      children: [
        name: 'node 2'
        children: []
      ]

module.exports = ->
  bindToController: true
  controller: Controller
  controllerAs: 'c'
  restrict: 'E'
  scope: {}
  templateUrl: '/templates/app-view.html'
