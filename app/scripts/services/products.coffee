'use strict'

###*
 # @ngdoc service
 # @name ssApp.products
 # @description
 # # products
 # Service in the ssApp.
###
angular.module 'ssApp'
  .service 'products', ->

    get: (id)->
      for item in @AllProducts()
        if item.id is id
          return item

    searchProducts: (searchString) ->
      found = []
      if searchString
        letterMatch = new RegExp(searchString, 'i')
        for item in @AllProducts()
          if letterMatch.test(item.title)
            found.push(item)
      else
        found = []
      return found;

    filterByPopular: ->
      popularItems = []
      for item in @AllProducts()
        if item.popular is true
          popularItems.push item
      return popularItems

    getIdCategory: (link)->
      for category in @AllCategory()
        if category.link is link
          return category.id

    filterByCategory: (catLink)->
      nameCategoryById = @getIdCategory(catLink)
      items = []
      for item in @AllProducts()
        if item.category is nameCategoryById
          items.push item
      return items

    AllCategory: ->
      return categories = [
        {
          id:'0',
          name:'Колье, кулоны',
          link:'Necklaces&Pendants'
        },
        {
          id:'1',
          name:'Серьги',
          link: 'Earrings'
        },
        {
          id:'2',
          name:'Браслеты',
          link: 'Bracelets'
        }
      ]

    AllProducts: ->
      return items = [
        {
          id: 'item-1',
          title: 'Серьги с синими камнями',
          description: 'Необычные серьги с натуральными камнями - содалитом и красным кораллом. Хотя коралл и не является камнем, он обладает вибрациями, а следовательно, ему присущи метафизические свойства. Изделия с кораллами помогают человеку стать более сбалансированным и достичь гармонии с силами природы и Вселенной. Если носить коралл во время путешествий, можно избежать опасных встреч (например, с ворами, обманщиками) и несчастных случаев, в том числе стихийных бедствий. Коралл - это прекрасный амулет для детей. Он защищает владельца от молний, порочных людей и злых намерений. Коралл стимулирует воображение, даруя своему владельцу грациозность и тонкость мышления.',
          image:'http://lh3.googleusercontent.com/M_-91gVLhCYMm7wxGVvrgnR4ArSuctFEoj_EB68uvhtGURGEscRuYTS_aDw19SD2mg1h8mJ7AA-BPTe9eoYghGvg=s750',
          category: '1',
          popular: true,
          price: '1700'
        },
        {
          id: 'item-2',
          title: 'Подвеска с жемчугом',
          description: 'Очень деликатная и стильная подвеска с жемчугом и маленькими бусинками коралла. Эти камни прекрасно дополняют друг друга - они пробуждают творчество и оптимизм, содействуют открытию себя, нахождению своей цели и своей “истинной самости”. Жемчуг обладает следующими свойствами - помогает успокоиться и сконцентрироваться, развивает доверие, честность и чистоту побуждений. ',
          image:'http://lh3.googleusercontent.com/mazD6Qo6oix6Qxmla9qYSB5cSeGIHYZlL8u8DmK0OilX-X1qsQarGZW2HVxSq0iXfP-CYz4IWIbjrVjAuCs_CdOi=s750',
          category: '0',
          popular: true,
          price: '1400'
        },
        {
          id: 'item-3',
          title: 'Браслет с амазонитомм',
          description: 'Очень деликатная и стильная подвеска с жемчугом и маленькими бусинками коралла. Эти камни прекрасно дополняют друг друга - они пробуждают творчество и оптимизм, содействуют открытию себя, нахождению своей цели и своей “истинной самости”. Жемчуг обладает следующими свойствами - помогает успокоиться и сконцентрироваться, развивает доверие, честность и чистоту побуждений. ',
          image:'http://lh3.googleusercontent.com/Xpuwu7MGciDOG8DPbRCWJ6OVztNt-GBaPAvV_hGIh6OMXrGcoPFzvVKdO1hjp-UAaR3GePaMbq_XutTTXOf_Vd_gfg=s750',
          category: '2',
          popular: false,
          price: '1400'
        },
        {
          id: 'item-4',
          title: 'Браслет с изумрудом',
          description: 'Очень деликатная и стильная подвеска с жемчугом и маленькими бусинками коралла. Эти камни прекрасно дополняют друг друга - они пробуждают творчество и оптимизм, содействуют открытию себя, нахождению своей цели и своей “истинной самости”. Жемчуг обладает следующими свойствами - помогает успокоиться и сконцентрироваться, развивает доверие, честность и чистоту побуждений. ',
          image:'http://lh3.googleusercontent.com/Be0Ki0CidAHWie27SdntTFonMwYaCTpFCLq5Rz13rzRiDEnLQeVdSN2UW7yeDDJRolf2ZuWZJrFd56g9yrUa0j8u=s750',
          category: '2',
          popular: true,
          price: '1000'
        },
        {
          id: 'item-5',
          title: 'Серьги-капли с ониксом',
          description: 'Очень деликатная и стильная подвеска с жемчугом и маленькими бусинками коралла. Эти камни прекрасно дополняют друг друга - они пробуждают творчество и оптимизм, содействуют открытию себя, нахождению своей цели и своей “истинной самости”. Жемчуг обладает следующими свойствами - помогает успокоиться и сконцентрироваться, развивает доверие, честность и чистоту побуждений. ',
          image:'http://lh3.googleusercontent.com/fbaJ0sf7-6DcfSTvHlCd5YOJ4MpqiD_XPnjvTDVqx4SGuoDBeKWYOyrlR1Fzl7xxHjjHeWfQ4v9LmJkdVDHky6a7iWk=s750',
          category: '1',
          popular: false,
          price: '2000'
        },
        {
          id: 'item-6',
          title: 'Кулон с рубином',
          description: 'Очень деликатная и стильная подвеска с жемчугом и маленькими бусинками коралла. Эти камни прекрасно дополняют друг друга - они пробуждают творчество и оптимизм, содействуют открытию себя, нахождению своей цели и своей “истинной самости”. Жемчуг обладает следующими свойствами - помогает успокоиться и сконцентрироваться, развивает доверие, честность и чистоту побуждений. ',
          image:'http://lh3.googleusercontent.com/K7NVMYuH7mtcGjZRdAY2q4wbTZ1ul5J7bdwqCFxD5NjsrM7TvMjck2kcKl0UtTpGoxA-4yy4RZt8Z3e5XdfzRn4h=s750',
          category: '0',
          popular: false,
          price: '1500'
        },
        {
          id: 'item-7',
          title: 'Длинные серьги с кораллом',
          description: 'Очень деликатная и стильная подвеска с жемчугом и маленькими бусинками коралла. Эти камни прекрасно дополняют друг друга - они пробуждают творчество и оптимизм, содействуют открытию себя, нахождению своей цели и своей “истинной самости”. Жемчуг обладает следующими свойствами - помогает успокоиться и сконцентрироваться, развивает доверие, честность и чистоту побуждений. ',
          image:'http://lh3.googleusercontent.com/auWEHTlqm0DZsFKY_Ign05a_SpFBW3-3OZ06eGbNfqGgWL_HSIFHwmv8faum7viWLUy_ngmi1z3bf8i5cdeOXjkNsQ=s750',
          category: '1',
          popular: false,
          price: '1900'
        },
      ]
