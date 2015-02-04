module.exports = ($q) ->
  new class Lazada
    get: (url) ->
      deferred = $q.defer()
      $.get(
        'http://cors-anywhere.herokuapp.com/' +
          'http://www.lazada.vn/apple-iphone-6-16gb-xam-hang-nhap-khau-240697.html',
        (response) ->
          deferred.resolve response
      )

      deferred.promise
