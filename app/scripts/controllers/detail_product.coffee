'use strict'

###*
 # @ngdoc function
 # @name ssApp.controller:DetailProductCtrl
 # @description
 # # DetailProductCtrl
 # Controller of the ssApp
###
angular.module 'ssApp'
  .controller 'DetailProductCtrl', [ '$scope', '$routeParams', 'products' ,($scope, $routeParams, products) ->
    itemId = $routeParams.productId
    $scope.item = products.get(itemId);

    return
  ]