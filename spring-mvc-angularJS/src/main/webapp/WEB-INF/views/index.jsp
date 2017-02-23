<!doctype html>
<html lang="en" ng-app="myApp">
<head>

    <meta charset="utf-8">
    <title>SpringMVCWithAngularJS</title>
    <!-- CSS Files -->
    <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/app.css" />
    <!-- load bootstrap and fontawesome via CDN -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />
    
    
    <!-- AngularJS Library Files -->
    
    <script src="resources/js/AngularJS/angular.min-1.5.9.js"></script>
    <script src="resources/js/AngularJS/angular-route.min-1.5.9.js"></script>
    <!-- 
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-route.js"></script>
	 -->
	
	<!-- User Defined Files -->
	<script src="resources/js/app.js"></script>
	<script src="resources/js/service/ItemService.js"></script>
	<script src="resources/js/controller/ItemListController.js"></script>
	<script src="resources/js/controller/ItemDetailsController.js"></script>
	
	<script src="resources/js/controller/UserController.js"></script>
	<script src="resources/js/service/UserService.js"></script>
	
	<base href="/spring-angularjs/" /> 
	
	
</head>
<body>
	
 	<!-- HEADER AND NAVBAR -->
        <header>
            <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/spring-angularjs/"></a>
                </div>
                 
                 <ul class="nav navbar-nav navbar-right">
                    <li><a href="/spring-angularjs/"><i class="fa fa-home"></i> Home</a></li>
                    <!-- 
                    <li><a href="#/items/users"><i class="fa fa-user"></i> User</a></li>
                    <li><a href="#/items/computers"><i class="fa fa-laptop"></i> Computers</a></li>
					<li><a href="#/items/phones"><i class="fa fa-mobile"></i> Phones</a></li>
					<li><a href="#/items/printers"><i class="fa fa-print"></i> Printers</a></li>
					<li><a href="#/items/others"><i class="fa fa-other"></i> Others</a></li>
                    <li><a href="#/about"><i class="fa fa-shield"></i> About</a></li>
                    <li><a href="#/contact"><i class="fa fa-comment"></i> Contact</a></li>
                     -->
                    
                    <li><a href="items/users"><i class="fa fa-user"></i> User</a></li>
                    <li><a href="items/computers"><i class="fa fa-laptop"></i> Computers</a></li>
					<li><a href="items/phones"><i class="fa fa-mobile"></i> Phones</a></li>
					<li><a href="items/printers"><i class="fa fa-print"></i> Printers</a></li>
					<li><a href="items/others"><i class="fa fa-other"></i> Others</a></li>
                    <li><a href="about"><i class="fa fa-shield"></i> About</a></li>
                    <li><a href="contact"><i class="fa fa-comment"></i> Contact</a></li>
                    
                    
                </ul> 
                
            </div>
            </nav>
        </header>
 	
	 <!-- MAIN CONTENT AND INJECTED VIEWS -->
	<div ng-view></div>

</body>
</html>