'use strict'

describe 'Controller: MenulistCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  MenulistCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MenulistCtrl = $controller 'MenulistCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(MenulistCtrl.awesomeThings.length).toBe 3
