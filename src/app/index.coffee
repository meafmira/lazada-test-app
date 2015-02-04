main = require "./main"

angular.module "testApp", ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'restangular', 'ui.router',
                           'ui.bootstrap', 'angular-loading-bar', main.name ]
  .config ($urlRouterProvider) ->
    $urlRouterProvider.otherwise '/'

