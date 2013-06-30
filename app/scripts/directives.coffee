'use strict'

angular.module('app.directives', [])

.directive('inputFocus', [
  
  '$timeout'
  
  ($timeout) ->
    (scope, elem, attrs) ->
      scope.$watch attrs.inputFocus, (value) ->
        $timeout -> elem[0].focus() if angular.isDefined(value) and value is on
  
])

.directive('inputBlur', [
  
  '$timeout'
  
  ($timeout) ->
    (scope, elem, attrs) ->
      elem.bind 'blur', ->
        scope.$apply attrs.inputBlur if angular.isDefined(attrs.inputBlur)
  
])
