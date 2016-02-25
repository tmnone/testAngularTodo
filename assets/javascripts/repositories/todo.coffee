window.app.factory 'todoRepository',
  [ ->
    class TodoRepository
      constructor: ->
        @todos = window.TODOS || []

      readAll: () ->
        @todos

      read: (id) ->
        @todos[id]

      addTodo: (todo) ->
        @todos.push todo

      updateTitle: (id, title) ->
        @todos[id].title = title

      updateDescription: (id, description) ->
        @todos[id].description = description

      removeTodo: (todo) ->
        index = @todos.indexOf(todo)
        @todos.splice(index, 1)

    new TodoRepository()
  ]