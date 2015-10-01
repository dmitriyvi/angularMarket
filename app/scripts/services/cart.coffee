'use strict'

###*
 # @ngdoc service
 # @name ssApp.cart
 # @description
 # # cart
 # Service in the ssApp.
###



angular.module 'ssApp'
  .factory 'cart', ['products', 'localStorageService', (products, localStorageService) ->
    console.log("Hello, I'm factory. I have CartClass:")

    lsKeyName = 'cart'
    cartRetrive = () ->
      return localStorageService.get(lsKeyName) or []
    cartSave = (cartContent) ->
      localStorageService.set lsKeyName, cartContent

    onCartChangeCallback = (changedCart) ->
      console.log('cart changed!', changedCart)
      cartSave(changedCart)

    savedItems = cartRetrive()
    return new CartClass(savedItems, products, onCartChangeCallback)
  ]

CartClass = (savedItems, productsService, changeCallback) ->
  items: savedItems
  _addCallbacks: []

  cartSave: () ->
    console.log('cart save')
    if changeCallback
      changeCallback(@items)
    return

  onAdd: (callback) ->
    console.log 'callback', callback
    if callback
      @_addCallbacks.push callback
    return

  update: (count, id) ->
    for item in @items
      if item.product.id is id
        item.count = count
        console.log 'CountUpdate:', item.count
        break
    @cartSave()

  getTotal: () ->
    sum = 0
    for item in @items
      sum += item.product.price * item.count
    return sum

  remove: (id) ->
    items = @items
    for item, index in items
      if item.product.id is id
        @items.splice(index, 1)
        break

    @cartSave()

  getItems: ->
    items = @items
    console.log items
    if not items
      return []
    else
      return items

  _findAddedProduct: (id)->
    for item in @items
      if item.product.id is id
        return item
    return false

  add: (id, count) ->
    itemAdded = @_findAddedProduct(id) # try to find added product
    if itemAdded is false
      item = {
        product: productsService.get(id)
        count: count
      }
      @items.push item
    else
      itemCount = parseInt(itemAdded.count) + parseInt(count)
      itemAdded.count = itemCount

    for callback in @_addCallbacks
      callback(@items)
    @cartSave()
