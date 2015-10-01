'use strict'

###*
 # @ngdoc directive
 # @name ssApp.directive:cartList
 # @description
 # # cartList
###
angular.module 'ssApp'
  .directive 'cartList', [ 'cart', (cart) ->
    restrict: 'EA'
    templateUrl: 'views/partials/cart_list.html'

    link: (scope, element) ->
      scope.items = cart.items # cart.getItems()
      return
  ]