window.app.controller 'TodoController',
  ['$scope', 'TodoEntity', 'TodoRepository', ($scope, TodoEntity, TodoRepository) ->

    $scope.todos = TodoRepository.getAll()

    $scope.addTodo = () ->
      newTodo = new TodoEntity(
        id: $scope.todos.length || 0
        title: $scope.newTodoTitle.trim()
        done: false
      )
      TodoRepository.add(newTodo)
      $scope.newTodoTitle = ''

    $scope.removeTodo = (todo) ->
      TodoRepository.remove(todo)

  ]