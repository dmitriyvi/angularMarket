'use strict'

###*
 # @ngdoc directive
 # @name ssApp.directive:cartItemCount
 # @description
 # # cartItemCount
###
angular.module 'ssApp'
  .directive 'cartItemCount', ['cart', (cart) ->
    restrict: 'EA'
    scope:{
      item: '=itemCart'
    }
    template: '<input type="text" ng-model="item.count" ng-change="updateItem(item.count, item.product.id)" size="2" maxlength="3">'
    link: (scope, element) ->

      scope.updateItem = (count, id) ->
        cart.update(count, id)
        console.log 'count:', count, 'ID:', id

      return
  ]