'use strict'

angular.module('App.filters', [])
angular.module('App.services', [])
angular.module('App.directives', [])
angular.module('App.controllers', [])

angular.module('App', [
  
  # Angular modules
  'ngRoute'
  'ngAnimate'
  'ngSanitize'
  
  # App modules
  'App.filters'
  'App.services'
  'App.directives'
  'App.controllers'
  
  # siml-angular-brunch modules
  'App.templates'
  
  # Miscellaneous modules
  
])

.config([
  
  '$routeProvider'
  
  ($routeProvider) ->
    
    $routeProvider
      
      .when '/',
        controller: 'Home'
        templateUrl: 'templates/home'
      
      .otherwise
        redirectTo: '/'
  
])

.run([
  
  'App'
  '$rootScope'
  
  (App, $rootScope) ->
    
    document.title = App.name
    
    $rootScope.App = App
  
])
