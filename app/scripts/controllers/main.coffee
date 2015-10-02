'use strict'

###*
 # @ngdoc function
 # @name ssApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ssApp
###
angular.module 'ssApp'
  .controller 'MainCtrl', [ '$scope', 'products', ( $scope, products ) ->
    $scope.popProducts = products.filterByPopular()

    return
  ]