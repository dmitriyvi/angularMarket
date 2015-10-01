'use strict'

###*
 # @ngdoc function
 # @name ssApp.controller:SearchProductCtrl
 # @description
 # # SearchProductCtrl
 # Controller of the ssApp
###
angular.module 'ssApp'
  .controller 'SearchProductCtrl', ['$scope', 'products', ($scope, products) ->
    $scope.foundItems = []
    $scope.searchProduct = (searchString) ->
      $scope.foundItems = products.searchProducts(searchString)

    return
  ]
