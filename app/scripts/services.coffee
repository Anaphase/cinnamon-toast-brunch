'use strict'

angular.module('app.services', [])

.factory('app', ->
  name: 'Cinnamon Toast Todos'
  version: '1.0'
)

.factory('LocalStorage', [
  
  'app'
  
  (app) ->
    get: (name) -> JSON.parse localStorage.getItem(app.name + name) or null
    put: (name, data) -> localStorage.setItem app.name + name, JSON.stringify(data) if data?
    delete: (name) -> localStorage.removeItem app.name + name
  
])
