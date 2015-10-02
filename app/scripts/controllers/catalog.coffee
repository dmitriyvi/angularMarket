'use strict'

###*
 # @ngdoc function
 # @name ssApp.controller:CatalogCtrl
 # @description
 # # CatalogCtrl
 # Controller of the ssApp
###
angular.module 'ssApp'
  .controller 'CatalogCtrl', [ '$scope', 'products', ( $scope, products ) ->
    $scope.items = products.AllProducts()

    return
  ]