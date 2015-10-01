'use strict'

describe 'Controller: DetailproductCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  DetailproductCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DetailproductCtrl = $controller 'DetailproductCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(DetailproductCtrl.awesomeThings.length).toBe 3
