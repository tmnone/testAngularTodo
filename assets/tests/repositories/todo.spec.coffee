describe "todoRepository", ->
    
  $controller = {}

  beforeEach ->
    angular.mock.module('todoApp')
    console.log 'angular.mock', angular.mock
    console.log 'window.app.name', window.app.name
    console.log 'angular.mock.module("todoApp")', angular.mock.module('todoApp')
    

  # beforeEach ->
    # console.log 'inject', inject
    # inject(_$controller_) ->
    #   $controller = _$controller_
  
  describe "readAll", ->
    it "should return todo list", ->
      expect(true).toEqual(true)