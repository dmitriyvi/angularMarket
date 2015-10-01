'use strict'

###*
 # @ngdoc directive
 # @name ssApp.directive:menu
 # @description
 # # menu
###
angular.module 'ssApp'
  .directive 'menu', [ '$location', ($location) ->
    restrict: 'EA'
    templateUrl: 'views/partials/menu.html'
    link: (scope, element, attrs) ->

      scope.isActive = (viewLocation) ->
        if viewLocation is $location.path()
          active = true
          return active
  ]
