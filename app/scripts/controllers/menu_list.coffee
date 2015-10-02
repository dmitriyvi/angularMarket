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
    $scope.Categories = products.AllCategory()

    return
  ]

