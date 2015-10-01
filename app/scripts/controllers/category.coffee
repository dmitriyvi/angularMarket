'use strict'

###*
 # @ngdoc function
 # @name ssApp.controller:CategoryCtrl
 # @description
 # # CategoryCtrl
 # Controller of the ssApp
###
angular.module 'ssApp'
  .controller 'CategoryCtrl', [ '$scope', '$routeParams', 'products', ($scope, $routeParams, products) ->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.getProductByCat = ->
      categoryLink = $routeParams.categoryLink
      $scope.items = products.filterByCategory(categoryLink)

    $scope.getProductByCat()

    return
  ]
