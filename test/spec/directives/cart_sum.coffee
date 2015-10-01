'use strict'

describe 'Directive: cartSum', ->

  # load the directive's module
  beforeEach module 'ssApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<cart-sum></cart-sum>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the cartSum directive'
