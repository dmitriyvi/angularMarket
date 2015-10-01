'use strict'

describe 'Controller: SearchProductCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  SearchProductCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SearchProductCtrl = $controller 'SearchProductCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(SearchProductCtrl.awesomeThings.length).toBe 3
