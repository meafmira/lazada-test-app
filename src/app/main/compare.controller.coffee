class Compare
  constructor: (@products) ->
    console.log "Products: ", @products
    @commonSpecs = @products[0].specifications.filter (spec) =>
      @products[1].specifications.some (spec2) ->
        spec.name.toLocaleLowerCase() == spec2.name.toLocaleLowerCase()

    @products.forEach (product) ->
      product.specHash = {}
      product.specifications.forEach (spec) ->
        product.specHash[spec.name] = spec.value



Compare.$inject = [ 'products' ]

module.exports = Compare
