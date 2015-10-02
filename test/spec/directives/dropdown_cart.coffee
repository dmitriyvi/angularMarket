'use strict'

describe 'Directive: dropdownCart', ->

  # load the directive's module
  beforeEach module 'ssApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<dropdown-cart></dropdown-cart>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the dropdownCart directive'
