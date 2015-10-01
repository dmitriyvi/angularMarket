'use strict'

###*
 # @ngdoc function
 # @name ssApp.controller:MenuListCtrl
 # @description
 # # MenuListCtrl
 # Controller of the ssApp
###
angular.module 'ssApp'
  .controller 'MenuListCtrl', [ '$scope', 'products', ($scope, products)->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.getCategoryName = ->
      $scope.Categories = products.AllCategory()

    $scope.getCategoryName()

    return
  ]

