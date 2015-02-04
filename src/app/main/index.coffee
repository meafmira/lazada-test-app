mainCtrl = require "./main.controller"
lazadaService = require "../../components/lazada.service"
productService = require "../../components/product.service"
compareCtrl = require "./compare.controller"
compareResolver = require "./compare.resolver"

module.exports = angular.module "main", []

.config ($stateProvider) ->
  $stateProvider
    .state "main",
      url: "/"
      templateUrl: "app/main/main.html"
      controller: "MainCtrl as main"

    .state "compare",
      url: "/compare?url1&url2"
      templateUrl: "app/main/compare.html"
      controller: "CompareCtrl as compare"
      resolve: compareResolver

.controller "MainCtrl", mainCtrl
.controller "CompareCtrl", compareCtrl
.factory    "Lazada", lazadaService
.factory    "Product", productService
