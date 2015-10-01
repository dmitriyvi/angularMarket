'use strict'

###*
 # @ngdoc directive
 # @name ssApp.directive:product
 # @description
 # # product
###
angular.module 'ssApp'
  .directive 'product', ->
    restrict: 'E'
    scope:
      item: '='

    templateUrl: 'views/partials/product.html'
    link: (scope, element, attrs) ->
      return