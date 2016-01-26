window.app.controller 'IndexPageController',
  ['$scope', 'TodoEntity', 'todoRepository', ($scope, TodoEntity, todoRepository) ->

    $scope.todos = todoRepository.readAll()
    $scope.addTodo = () ->
      newTodo = new TodoEntity(
        id: $scope.todos.length || 0
        title: $scope.newTodoTitle.trim()
        description: null
        done: false
      )
      todoRepository.addTodo(newTodo)
      $scope.newTodoTitle = ''

    $scope.removeTodo = (todo) ->
      todoRepository.removeTodo(todo)

  ]