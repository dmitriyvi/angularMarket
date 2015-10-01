'use strict'

describe 'Controller: PopularCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  PopularCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PopularCtrl = $controller 'PopularCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(PopularCtrl.awesomeThings.length).toBe 3
