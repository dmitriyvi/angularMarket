'use strict'

describe 'Controller: MenuListCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  MenuListCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MenuListCtrl = $controller 'MenuListCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(MenuListCtrl.awesomeThings.length).toBe 3
