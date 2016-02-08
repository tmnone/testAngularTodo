describe "TodoPageController", ->

  beforeEach(module('todoApp'))

  $controller = $rootScope = $scope = $routeParams = todoRepository = {}
  
  beforeEach ->
    
    inject ['$rootScope', '$controller', (_$rootScope_, _$controller_) ->
      $rootScope = _$rootScope_
      $scope = $rootScope.$new()
      $controller = _$controller_
    ]

    $injector = angular.injector(['todoApp'])
    todoRepository = $injector.get('todoRepository')

  describe "todo Page", ->
    it "should get a todo", ->
      $routeParams.id = 0
      $controller 'TodoPageController',
        $scope: $scope
        $routeParams: $routeParams

      expect(todoRepository.read($routeParams.id)).toBeNonEmptyObject()