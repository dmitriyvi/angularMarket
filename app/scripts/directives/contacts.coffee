'use strict'

###*
 # @ngdoc directive
 # @name ssApp.directive:contacts
 # @description
 # # contacts
###
angular.module 'ssApp'
  .directive 'contacts', ->
    restrict: 'EA'
    templateUrl: 'views/partials/contacts.html'
    link: (scope, element, attrs) ->
