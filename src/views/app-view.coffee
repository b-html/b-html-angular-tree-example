class Controller
  @$inject: []

  constructor: ->
    @message = 'hello'

module.exports = ->
  bindToController: true
  controller: Controller
  controllerAs: 'c'
  restrict: 'E'
  scope: {}
  templateUrl: '/templates/app-view.html'
