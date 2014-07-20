angular.module('App.controllers')

.controller('Home', [
  
  '$scope'
  '$timeout'
  'LocalStorage'
  
  ($scope, $timeout, LocalStorage) ->
    
    $scope.new_todo_text = ''
    $scope.new_todo_focus = on
    
    $scope.newTodoBlur = -> $scope.new_todo_focus = off
    
    $scope.todos = LocalStorage.get('todos') || [
      text: 'Install Cinnamon Toast Brunch'
      done: yes
    ,
      text: 'Learn CoffeeScript'
      done: no
    ,
      text: 'Learn AngularJS'
      done: no
    ,
      text: 'Learn Stylus'
      done: no
    ,
      text: 'Learn SIML'
      done: no
    ]
    
    $scope.$watch 'todos', (->
      LocalStorage.put 'todos', $scope.todos
    ), yes
    
    $scope.addTodo = (text) ->
      $scope.new_todo_text = ''
      $scope.todos.push
        done: no
        text: text
      
    $scope.removeTodo = (todo) ->
      $scope.todos.splice $scope.todos.indexOf(todo), 1
  
])
