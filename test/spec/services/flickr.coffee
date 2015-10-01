'use strict'

describe 'Service: flickr', ->

  # load the service's module
  beforeEach module 'ssApp'

  # instantiate service
  flickr = {}
  beforeEach inject (_flickr_) ->
    flickr = _flickr_

  it 'should do something', ->
    expect(!!flickr).toBe true
