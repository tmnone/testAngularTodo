window.app.controller 'IndexPageController',
  ['$scope', 'TodoEntity', 'TodoRepository', ($scope, TodoEntity, TodoRepository) ->

    $scope.todos = TodoRepository.getAll()
    $scope.addTodo = () ->
      newTodo = new TodoEntity(
        id: $scope.todos.length || 0
        title: $scope.newTodoTitle.trim()
        description: null
        done: false
      )
      TodoRepository.addTodo(newTodo)
      $scope.newTodoTitle = ''

    $scope.removeTodo = (todo) ->
      TodoRepository.removeTodo(todo)

  ]