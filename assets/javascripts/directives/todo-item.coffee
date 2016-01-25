window.app.directive 'todoItem',
  [ '$templateCache', ($templateCache) ->
    restrict: 'E'
    replace: true
    template: $templateCache.get("todo-item.html")
  ]