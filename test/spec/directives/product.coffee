'use strict'

describe 'Directive: product', ->

  # load the directive's module
  beforeEach module 'ssApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<product></product>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the product directive'
