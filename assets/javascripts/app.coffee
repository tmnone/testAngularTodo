window.app = angular.module('todoApp', ['ngRoute', 'templatescache'])

window.app.config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
  $routeProvider
    .when('/todo/:id', {
      templateUrl: '../pages/todo-page.html'
      controller: 'TodoPageController'
    })
    .otherwise({
      redirectTo: '/'
      templateUrl: '../pages/index.html'
      controller: 'IndexPageController'
    })
  $locationProvider.html5Mode
    enabled: true
    requireBase: false
])