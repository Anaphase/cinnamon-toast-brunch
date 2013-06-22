'use strict'

angular.module('app.filters', [])

.filter('pending', [
  -> (todos) -> (todo for todo in todos when todo.done is no)
])

.filter('done', [
  -> (todos) -> (todo for todo in todos when todo.done is yes)
])
