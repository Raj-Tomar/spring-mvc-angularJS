<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
</html>