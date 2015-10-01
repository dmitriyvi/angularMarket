'use strict'

describe 'Service: cart', ->

  # load the service's module
  beforeEach module 'ssApp'

  # instantiate service
  cart = {}
  beforeEach inject (_cart_) ->
    cart = _cart_

  it 'should do something', ->
    expect(!!cart).toBe true
