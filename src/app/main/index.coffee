mainCtrl = require "./main.controller"
lazadaService = require "../../components/lazada.service"

module.exports = angular.module "main", []

.config ($stateProvider) ->
  $stateProvider
    .state "main",
      url: "/"
      templateUrl: "app/main/main.html"
      controller: "MainCtrl as main"

    .state "compare",
      url: "/compare?url1&url2"
      templateUrl: "app/main/main.html"

.controller "MainCtrl", mainCtrl
.factory    "Lazada", lazadaService
