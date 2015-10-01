'use strict'

describe 'Controller: CatalogCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  CatalogCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CatalogCtrl = $controller 'CatalogCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(CatalogCtrl.awesomeThings.length).toBe 3
