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
    categoryLink = $routeParams.categoryLink
    $scope.items = products.filterByCategory(categoryLink)

    return
  ]
