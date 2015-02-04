module.exports = ($q) ->
  new class Lazada
    get: (url) ->
      deferred = $q.defer()
      $.get(
        'http://cors-anywhere.herokuapp.com/' +
          url
        (response) ->
          deferred.resolve response
      )

      deferred.promise
