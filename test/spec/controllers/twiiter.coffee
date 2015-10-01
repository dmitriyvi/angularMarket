'use strict'

describe 'Controller: TwiiterCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  TwiiterCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TwiiterCtrl = $controller 'TwiiterCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(TwiiterCtrl.awesomeThings.length).toBe 3
