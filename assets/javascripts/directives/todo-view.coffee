window.app.directive 'todoView',
  [ '$templateCache', ($templateCache) ->
    restrict: 'E'
    replace: true
    scope: '='
    template: $templateCache.get("todo-view.html")
    link: (scope, element, attrs) ->
      scope.$watch 'todo.description', (newValue) ->
        scope.showDescriptionForm = if newValue then false else true
  ]