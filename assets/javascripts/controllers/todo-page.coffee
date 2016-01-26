window.app.controller 'TodoPageController',
  ['$scope', '$routeParams', 'todoRepository', ($scope, $routeParams, todoRepository) ->
    
    $scope.todoId = $routeParams.id
    $scope.todo = todoRepository.read($scope.todoId)
    $scope.newTodoTitle = $scope.todo.title
    $scope.todoDescription = $scope.todo.description

    $scope.addDescription = (todoDescription) ->
      todoDescription = null if todoDescription == ''
      todoRepository.updateDescription($scope.todoId, todoDescription)
      
    $scope.updateTitle = (todoTitle) ->
      todoRepository.updateTitle($scope.todoId, todoTitle)

  ]