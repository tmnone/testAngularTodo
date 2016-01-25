window.app.controller 'TodoPageController',
  ['$scope', '$routeParams', 'TodoRepository', ($scope, $routeParams, TodoRepository) ->
    
    $scope.todoId = $routeParams.id
    $scope.todo = TodoRepository.getTodo($scope.todoId)
    $scope.newTodoTitle = $scope.todo.title
    $scope.todoDescription = $scope.todo.description

    $scope.addDescription = (todoDescription) ->
      todoDescription = null if todoDescription == ''
      TodoRepository.addDescription($scope.todoId, todoDescription)
      
    $scope.updateTitle = (todoTitle) ->
      TodoRepository.addTitle($scope.todoId, todoTitle)

  ]