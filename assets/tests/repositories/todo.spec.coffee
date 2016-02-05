describe "todoRepository", ->

  todoRepository = {}

  # beforeEach ->
  #   inject ['$controller', (_$controller_) ->
  #     $controller = _$controller_
  #     console.log($controller)
  #   ]

  beforeEach ->
    $injector = angular.injector(['todoApp'])
    todoRepository = $injector.get('todoRepository')

  describe "readAll()", ->
    it "should return todo list", ->
      expect(todoRepository.readAll()).toBeArrayOfObjects()

  describe "read()", ->
    it "should return single todo", ->
      expect(todoRepository.read(0)).toBeObject()