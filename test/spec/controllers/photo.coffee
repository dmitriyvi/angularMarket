'use strict'

describe 'Controller: PhotoCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  PhotoCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PhotoCtrl = $controller 'PhotoCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(PhotoCtrl.awesomeThings.length).toBe 3
