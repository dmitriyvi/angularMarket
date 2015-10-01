'use strict'

describe 'Controller: ProductdetailctrlCtrl', ->

  # load the controller's module
  beforeEach module 'ssApp'

  ProductdetailctrlCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ProductdetailctrlCtrl = $controller 'ProductdetailctrlCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(ProductdetailctrlCtrl.awesomeThings.length).toBe 3
