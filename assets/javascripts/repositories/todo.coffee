window.app.factory 'todoRepository',
  [ ->
    class TodoRepository
      readAll: () ->
        window.TODOS

      read: (id) ->
        window.TODOS[id]

      addTodo: (todo) ->
        window.TODOS.push todo

      updateTitle: (id, title) ->
        window.TODOS[id].title = title

      updateDescription: (id, description) ->
        window.TODOS[id].description = description

      removeTodo: (todo) ->
        index = window.TODOS.indexOf(todo)
        window.TODOS.splice(index, 1)

    new TodoRepository()
  ]