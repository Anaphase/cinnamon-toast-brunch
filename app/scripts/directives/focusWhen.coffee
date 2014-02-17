angular.module('App.directives')

.directive('focusWhen', [
  
  '$timeout'
  
  ($timeout) ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      scope.$watch attrs.focusWhen, (value) ->
        $timeout -> element[0].focus() if value? and value is on
  
])
