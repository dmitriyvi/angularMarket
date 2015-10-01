'use strict'

describe 'Directive: cartAddButton', ->

  # load the directive's module
  beforeEach module 'ssApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<cart-add-button></cart-add-button>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the cartAddButton directive'
