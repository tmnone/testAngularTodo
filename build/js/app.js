(function(){window.app=angular.module("todoApp",["ngRoute","templatescache"]),window.app.config(["$routeProvider","$locationProvider",function(t,o){return t.when("/todo/:id",{templateUrl:"../pages/todo-page.html",controller:"TodoPageController"}).otherwise({redirectTo:"/",templateUrl:"../pages/index.html",controller:"IndexPageController"}),o.html5Mode({enabled:!0,requireBase:!1})}])}).call(this),function(){window.TODOS=[{id:0,title:"Todo title 1",description:null,done:!1},{id:1,title:"Todo title 2",description:null,done:!1},{id:2,title:"Todo title 3",description:null,done:!1},{id:3,title:"Todo title 4",description:null,done:!1}]}.call(this),function(){window.app.controller("TodoPageController",["$scope","$routeParams","TodoRepository",function(t,o,e){return t.todoId=o.id,t.todo=e.getTodo(t.todoId),t.addDescription=function(){return e.addDescription(t.todoId,t.todoDescription)}}])}.call(this),function(){window.app.controller("IndexPageController",["$scope","TodoEntity","TodoRepository",function(t,o,e){return t.todos=e.getAll(),t.addTodo=function(){var n;return n=new o({id:t.todos.length||0,title:t.newTodoTitle.trim(),description:null,done:!1}),e.addTodo(n),t.newTodoTitle=""},t.removeTodo=function(t){return e.removeTodo(t)}}])}.call(this),function(){window.app.directive("space",["$templateCache",function(t){return{restrict:"E",replace:!0,template:t.get("space.html")}}])}.call(this),function(){window.app.directive("todoItem",["$templateCache",function(t){return{restrict:"E",replace:!0,template:t.get("todo-item.html")}}])}.call(this),function(){window.app.directive("todoView",["$templateCache",function(t){return{restrict:"E",replace:!0,scope:"=",template:t.get("todo-view.html")}}])}.call(this),function(){window.app.factory("TodoEntity",[function(){var t;return t=function(){function t(t){null==t&&(t={}),this.id=t.id||0,this.title=t.title,this.description=t.description,this.done=t.done}return t}()}])}.call(this),function(){window.app.factory("TodoRepository",[function(){var t;return new(t=function(){function t(){}return t.prototype.getAll=function(){return window.TODOS},t.prototype.getTodo=function(t){return window.TODOS[t]},t.prototype.addTodo=function(t){return window.TODOS.push(t)},t.prototype.addDescription=function(t,o){return window.TODOS[t].description=o},t.prototype.removeTodo=function(t){var o;return o=window.TODOS.indexOf(t),window.TODOS.splice(o,1)},t}())}])}.call(this);