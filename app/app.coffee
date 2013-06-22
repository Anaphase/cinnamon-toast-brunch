'use strict'

angular.module('app', [
  
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  
  # created by siml-angular-brunch
  'app.templates'
  
])

.config([
  
  '$routeProvider'
  
  ($routeProvider) ->
    
    $routeProvider
      
      .when '/home',
        controller: 'Home'
        templateUrl: 'templates/home'
      
      .otherwise
        redirectTo: '/home'
  
])


.run([
  
  'app'
  
  (app) -> document.title = app.name

])