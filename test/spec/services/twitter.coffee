'use strict'

describe 'Service: twitter', ->

  # load the service's module
  beforeEach module 'ssApp'

  # instantiate service
  twitter = {}
  beforeEach inject (_twitter_) ->
    twitter = _twitter_

  it 'should do something', ->
    expect(!!twitter).toBe true
