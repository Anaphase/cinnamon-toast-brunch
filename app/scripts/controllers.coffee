'use strict'

angular.module('app.controllers', [])

.controller('Home', [
  
  'app'
  '$scope'
  '$timeout'
  'LocalStorage'
  
  (app, $scope, $timeout, LocalStorage) ->
    
    $scope.app = app
    
    $scope.new_todo_text = ''
    $scope.new_todo_focus = on
    
    $scope.newTodoBlur = -> $scope.new_todo_focus = off
    
    $scope.todos = LocalStorage.get('todos') || [
      text: 'Install Cinnamon Toast Brunch'
      done: yes
    ,
      text: 'Learn CoffeeScript'
    ,
      text: 'Learn AngularJS'
    ,
      text: 'Learn SASS'
    ,
      text: 'Learn SIML'
    ]
    
    $scope.$watch 'todos', (->
      LocalStorage.put 'todos', $scope.todos
    ), yes
    
    $scope.addTodo = (text) ->
      $scope.new_todo_text = ''
      $scope.todos.push { text: text, done: no }
      
    $scope.removeTodo = (todo) ->
      $scope.todos.splice $scope.todos.indexOf(todo), 1
    
  
])
