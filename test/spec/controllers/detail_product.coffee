'use strict'

describe 'Controller: DetailProductCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  DetailProductCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DetailProductCtrl = $controller 'DetailProductCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(DetailProductCtrl.awesomeThings.length).toBe 3
