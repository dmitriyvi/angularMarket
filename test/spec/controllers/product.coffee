'use strict'

describe 'Controller: ProductCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  ProductCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ProductCtrl = $controller 'ProductCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(ProductCtrl.awesomeThings.length).toBe 3
