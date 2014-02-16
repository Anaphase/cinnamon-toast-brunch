angular.module('App.directives', [])

.directive('onBlur', [
  
  '$timeout'
  
  ($timeout) ->
    
    restrict: 'A'
    link: (scope, element, attrs) ->
      
      if attrs.inputBlur?
        element.bind 'blur', -> scope.$apply attrs.inputBlur
  
])
