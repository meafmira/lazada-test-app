class Main
  constructor: (@$state) ->

  compare: (url1, url2) ->
    @$state.go "compare", { url1: url1, url2: url2 }

Main.$inject = [ '$state' ]

module.exports = Main
