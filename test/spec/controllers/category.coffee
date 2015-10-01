'use strict'

describe 'Controller: CategoryCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  CategoryCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CategoryCtrl = $controller 'CategoryCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(CategoryCtrl.awesomeThings.length).toBe 3
