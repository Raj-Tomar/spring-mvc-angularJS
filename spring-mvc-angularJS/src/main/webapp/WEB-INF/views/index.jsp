<!doctype html>
<html lang="en" ng-app="myApp">
<head>

    <meta charset="utf-8">
    <title>Service App</title>
    <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/app.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>
	<script src="resources/js/app.js"></script>
	<script src="resources/js/service/ItemService.js"></script>

<!-- 	<base href="/Spring4MVCAngularJSRoutingExample/index.html" />  -->

</head>
<body>
		
	<div class="generic-container">
		<h2>SellPoint - AngularJS Routing Application</h2>
		<div class="panel panel-default">
			<!-- Default panel contents -->
		    <div class="panel-heading"><span class="lead">All Items</span></div>
		    <div class="tablecontainer">
				<ul>
					<li><a href="#/items/computers">Computers</a></li>
					<li><a href="#/items/phones">Phones</a></li>
					<li><a href="#/items/printers">Printers</a></li>
					<li><a href="#/items/others">Others</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div ng-view></div>
	

<script src="resources/js/controller/ItemListController.js"></script>
<script src="resources/js/controller/ItemDetailsController.js"></script>

</body>
</html>