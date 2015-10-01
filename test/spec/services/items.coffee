'use strict'

describe 'Service: items', ->

  # load the service's module
  beforeEach module 'ssApp'

  # instantiate service
  items = {}
  beforeEach inject (_items_) ->
    items = _items_

  it 'should do something', ->
    expect(!!items).toBe true
