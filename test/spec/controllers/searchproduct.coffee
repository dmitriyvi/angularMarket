'use strict'

describe 'Controller: SearchproductCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  SearchproductCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SearchproductCtrl = $controller 'SearchproductCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(SearchproductCtrl.awesomeThings.length).toBe 3
