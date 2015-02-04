module.exports = (Lazada, $q) ->
  new class Product
    get: (url) ->
      deferred = $q.defer()
      Lazada.get(url).then (data) ->
        $data = $(data)
        productInfo = {}
        productInfo.title = $('#prod_title', $data).text()

        img = $('.productImage', $data).data('zoom-image')
        productInfo.img = img

        $specTable = $('table.specification-table', $data);
        $specTableRows = $('tr', $specTable);
        productInfo.specifications = []
        $specTableRows.each (index, row) ->
          $td = $(row).find('td')
          productInfo.specifications.push
            name: $($td[0]).text()
            value: $($td[1]).text()

        console.log productInfo

        deferred.resolve productInfo

      deferred.promise
