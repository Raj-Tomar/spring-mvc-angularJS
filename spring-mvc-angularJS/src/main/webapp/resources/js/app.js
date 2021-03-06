'use strict';

var App = angular.module('myApp',['ngRoute']);

App.config(['$routeProvider','$locationProvider', function($routeProvider, $locationProvider) {
	
	// use the HTML5 History API Support
	$locationProvider.html5Mode(true);
	//$locationProvider.html5Mode(false).hashPrefix('!');
	
	$routeProvider

	.when('/items/users', {
		templateUrl: 'items/users',
		controller : "UserController as ctrl",
	})

	.when('/items/computers', {
		templateUrl: 'items/computers',
		controller : "ItemListController as itemListCtrl",
		resolve: {
			async: ['ItemService', function(ItemService) {
				return ItemService.fetchAllItems('computers');
			}]
		}
	})
	.when('/items/phones', {
		templateUrl: 'items/phones',
		controller : "ItemListController as itemListCtrl",
		resolve: {
			async: ['ItemService', function(ItemService) {
				return ItemService.fetchAllItems('phones');
			}]
		}
	})
	.when('/items/printers', {
		templateUrl: 'items/printers',
		controller : "ItemListController as itemListCtrl",
		resolve: {
			async: ['ItemService', function(ItemService) {
				return ItemService.fetchAllItems('printers');
			}]
		}
	})
	.when('/items/computerdetails/:id', {
		templateUrl: 'items/computerdetails',
		controller : "ItemDetailsController as itemDetailsCtrl",
		resolve: {
			async: ['ItemService','$route', function(ItemService , $route) {
				return ItemService.fetchSpecificItem('computers',$route.current.params.id);
			}]
		}
	})
	.when('/items/phonedetails/:id', {
		templateUrl: 'items/phonedetails',
		controller : "ItemDetailsController as itemDetailsCtrl",
		resolve: {
			async: ['ItemService','$route', function(ItemService , $route) {
				return ItemService.fetchSpecificItem('phones',$route.current.params.id);
			}]
		}
	})
	.when('/items/printerdetails/:id', {
		templateUrl: 'items/printerdetails',
		controller : "ItemDetailsController as itemDetailsCtrl",
		resolve: {
			async: ['ItemService','$route', function(ItemService , $route) {
				return ItemService.fetchSpecificItem('printers',$route.current.params.id);
			}]
		}
	})

	.otherwise({
		redirectTo:'items/users'
	});
	
}]);




