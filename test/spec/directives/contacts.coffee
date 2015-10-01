'use strict'

describe 'Directive: contacts', ->

  # load the directive's module
  beforeEach module 'ssApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<contacts></contacts>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the contacts directive'
