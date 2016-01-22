window.app.factory 'TodoRepository',
  [ ->
    class TodoRepository
      getAll: () ->
        window.TODOS

      add: (todo) ->
        window.TODOS.push todo

      remove: (todo) ->
        index = window.TODOS.indexOf(todo)
        window.TODOS.splice(index, 1)

    new TodoRepository()
  ]