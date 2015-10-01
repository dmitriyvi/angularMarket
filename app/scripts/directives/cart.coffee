'use strict'

###*
 # @ngdoc directive
 # @name ssApp.directive:cart
 # @description
 # # cart
###
angular.module 'ssApp'
  .directive 'cart', ['cart', '$rootScope', (cart, $rootScope) ->
    restrict: 'EA'
    templateUrl: 'views/partials/cart.html'

    link: (scope, element) ->
      scope.items = cart.items # cart.getItems()
      scope.getTotal = ->
        return cart.getTotal()

      scope.removeItem = (item) ->
        cart.remove(item.product.id)
        return

      cart.onAdd((newItems) ->
        scope.$apply()
      )
      return
  ]
