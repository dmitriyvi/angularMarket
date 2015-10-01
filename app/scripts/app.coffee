'use strict'

###*
 # @ngdoc overview
 # @name ssApp
 # @description
 # # ssApp
 #
 # Main module of the application.
###
angular
  .module 'ssApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'LocalStorageModule',
    'ngTouch',
    'debounce',
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/about',
        templateUrl: 'views/about.html'
      .when '/catalog',
        templateUrl: 'views/catalog.html'
        controller: 'CatalogCtrl'
        controllerAs: 'catalog'
      .when '/search',
        templateUrl: 'views/search.html'
        controller: 'SearchProductCtrl'
      .when '/product/:productId',
        templateUrl: 'views/partials/product-detail.html',
        controller: 'DetailProductCtrl'
      .when '/products/:categoryLink',
        templateUrl: 'views/category.html',
        controller: 'CategoryCtrl'
      .when '/checkout',
        templateUrl: 'views/partials/checkout.html'
      .otherwise
        redirectTo: '/'