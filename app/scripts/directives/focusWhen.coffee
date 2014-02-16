angular.module('App.directives', [])

.directive('focusWhen', [
  
  '$timeout'
  
  ($timeout) ->
    
    restrict: 'A'
    link: (scope, element, attrs) ->
      
      console.log 'yo'
      
      scope.$watch attrs.focusWhen, (value) ->
        console.log 'sup'
        $timeout -> elem[0].focus() if value? and value is on
  
])
