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
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.getPopulatProducts = ->
      $scope.popProducts = products.filterByPopular()

    $scope.getPopulatProducts()

    return
  ]