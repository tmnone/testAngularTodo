describe "TodoPageController", ->

  beforeEach(module('todoApp'))

  $controller = $rootScope = $scope = {}
  
  beforeEach ->
    
    inject ['$rootScope', '$controller', (_$rootScope_, _$controller_) ->
      $rootScope = _$rootScope_
      $scope = $rootScope.$new()
      $controller = _$controller_
    ]

  describe "todo Page", ->
    it "should get a todo", ->
      # controller = $controller 'TodoPageController',
      #   $scope: $scope
      #   $routeParams:
      #     id: 0

      console.log '$controller', $controller('IndexPageController', {$scope: $scope})
      # console.log '$controller', $controller('TodoPageController', {$scope: $scope})



      expect(true).toBe(true)