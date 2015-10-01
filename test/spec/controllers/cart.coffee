'use strict'

describe 'Controller: CartCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  CartCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CartCtrl = $controller 'CartCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(CartCtrl.awesomeThings.length).toBe 3
