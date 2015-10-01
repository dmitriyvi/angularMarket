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
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.getProducts = ->
      $scope.items = products.AllProducts()

    $scope.getProducts()

    return
  ]  