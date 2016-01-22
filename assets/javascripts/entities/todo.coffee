window.app.factory 'TodoEntity',
  [ ->
    class TodoEntity
      constructor: (attrs = {})->
        @id = attrs.id || 0
        @title = attrs.title
        @done = attrs.done
  ]