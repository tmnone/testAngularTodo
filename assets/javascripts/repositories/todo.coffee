window.app.factory 'TodoRepository',
  [ ->
    class TodoRepository
      getAll: () ->
        window.TODOS

      getTodo: (id) ->
        window.TODOS[id]

      addTodo: (todo) ->
        window.TODOS.push todo

      addDescription: (id, description) ->
        window.TODOS[id].description = description

      removeTodo: (todo) ->
        index = window.TODOS.indexOf(todo)
        window.TODOS.splice(index, 1)

    new TodoRepository()
  ]