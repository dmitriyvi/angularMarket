'use strict'

###*
 # @ngdoc directive
 # @name ssApp.directive:cartAddButton
 # @description
 # # cartAddButton
###
angular.module 'ssApp'
  .directive 'cartAddButton', [ 'cart', (cart) ->
    restrict: 'EA'
    scope:
      product: '='

    link: (scope, element) ->
      $(element).click((e) ->
        e.preventDefault()
        count = 1;
        cart.add(scope.product.id, count)
      )
  ]