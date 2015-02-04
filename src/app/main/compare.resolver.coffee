module.exports =
  products: ($stateParams, Product, $q) ->
    url1 = $stateParams.url1
    url2 = $stateParams.url2
    $q.all([ Product.get(url1), Product.get(url2) ]).catch ->
      alert "Something wrong"
