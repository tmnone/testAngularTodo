describe "todoRepository", ->

  $rootScope = $scope = {}
  todoRepository = null

  sampleTodos = [
    {id: 0, title: 'Todo title 1', description: '', done: false}
    {id: 1, title: 'Todo title 2', description: '', done: false}
    {id: 2, title: 'Todo title 3', description: '', done: false}
    {id: 3, title: 'Todo title 4', description: '', done: false}
  ]

  beforeEach ->
    module 'todoApp', ['$provide', ($provide)->
      
      # Inject test repositories and return sample todo on read
      todoRepository = new TestRepository(
        "read": sampleTodos[0]
        "readAll": sampleTodos
      )
      $provide.value('todoRepository', todoRepository)
      return null
    ]

    inject ['$rootScope', '$controller', (_$rootScope_, _$controller_) ->
      $rootScope = _$rootScope_
      $scope = $rootScope.$new()
      $controller = _$controller_
    ]

  describe "readAll()", ->
    it "should return todo list", ->
      expect(todoRepository.readAll()).toBeArrayOfObjects()

  describe "read()", ->
    it "should return single todo", ->
      expect(todoRepository.read()).toBeObject()