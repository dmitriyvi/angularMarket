'use strict'

###*
 # @ngdoc directive
 # @name ssApp.directive:dropdownCart
 # @description
 # # dropdownCart
###
angular.module 'ssApp'
  .directive 'dropdownCart',['cart', '$rootScope', (cart, $rootScope) ->
    restrict: 'EA'
    templateUrl: 'views/partials/dropdown_cart.html'

    link: (scope, element) ->
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