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




<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
    <html ng-app="scotchApp">
    <head>
      <!-- SCROLLS -->
      <!-- load bootstrap and fontawesome via CDN -->
      <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
      <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />

      <script src="<c:url value='/resources/js/AngularJS/angular.min-1.6.2.js' />"></script>
      <script src="<c:url value='/resources/js/AngularJS/angular-route.min.js' />"></script>
      <script src="<c:url value='/resources/js/routing.js' />"></script>
    </head>
    
    <!-- define angular controller -->
    <body ng-controller="mainController">

        <!-- HEADER AND NAVBAR -->
        <header>
            <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/"></a>
                </div>
				
				
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<c:url value="/home"/>"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="<c:url value="/user"/>"><i class="fa fa-user"></i> User</a></li>
                    <li><a href="<c:url value="/about"/>"><i class="fa fa-shield"></i> About</a></li>
                    <li><a href="<c:url value="/contact"/>"><i class="fa fa-comment"></i> Contact</a></li>
                </ul> 
                
                 <!-- 
                 <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="#user"><i class="fa fa-user"></i> User</a></li>
                    <li><a href="#about"><i class="fa fa-shield"></i> About</a></li>
                    <li><a href="#contact"><i class="fa fa-comment"></i> Contact</a></li>
                </ul> 
                 -->
                
            </div>
            </nav>
        </header>

        <!-- MAIN CONTENT AND INJECTED VIEWS -->
        <div id="main">
			{{ message }}
            <!-- angular templating -->
            <!-- this is where content will be injected -->
			<div ng-view></div>
        </div>

	</body>
</html> --%>