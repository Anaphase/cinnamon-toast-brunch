angular.module('App.directives')

.directive('onBlur', [
  
  () ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      if attrs.inputBlur?
        element.bind 'blur', -> scope.$apply attrs.inputBlur
  
])
