window.app.factory 'TodoEntity',
  [ ->
    class TodoEntity
      constructor: (attrs = {})->
        @id = attrs.id || 0
        @title = attrs.title
        @description = attrs.description
        @done = attrs.done
  ]