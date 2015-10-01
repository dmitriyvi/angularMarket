'use strict'

describe 'Directive: cartItemCount', ->

  # load the directive's module
  beforeEach module 'ssApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<cart-item-count></cart-item-count>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the cartItemCount directive'
