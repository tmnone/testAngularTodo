describe "todoRepository", ->

  $controller = {}

  beforeEach ->
    angular.module('todoApp')
    console.log 'angular.mock', angular.mock
    console.log 'window.app.name', window.app.name
    console.log 'angular.mock.module("todoApp")', angular.mock.module('todoApp')

  beforeEach ->
    inject ['$controller', (_$controller_) ->
      $controller = _$controller_
      console.log($controller)
    ]

  describe "readAll", ->
    it "should return todo list", ->
      expect(true).toEqual(true)