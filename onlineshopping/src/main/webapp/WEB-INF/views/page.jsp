<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Online Shopping Website Using Spring MVC and Hibernate">
<meta name="author" content="Danu Andaru">

<title>Online Shopping</title>

	<!-- Bootstrap Core CSS -->
	<link href="${css}/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom CSS -->
	<link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>

	<div class="wrapper">	
		<!-- nav  -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
            	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li id="about">
                        <a href="#">About</a>
                    </li>

                    <li id="contact">
                        <a href="#">Contact</a>
                    </li>
                    
                    <li id="listProducts">
                        <a href="#">View Products</a>
                    </li>
                </ul>                
            </div>
        </div>
    	</nav>
		
		<!-- Page Content -->
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-3">
	          <h1 class="my-4">Shop Name</h1>
	          <div class="list-group">
	            <a href="#" class="list-group-item">Category 1</a>
	            <a href="#" class="list-group-item">Category 2</a>
	            <a href="#" class="list-group-item">Category 3</a>
	          </div>
	        </div>
	
	        <div class="col-lg-9">
				<p>Content</p>
		
	        </div>
	      </div>
	    </div>
		
		<!-- footer  -->
		<div class="container footer">
	    <hr>
	        <footer>
	            <div class="row">
	                <div class="col-lg-12">
	                    <p>Copyright &copy; Online Shopping 2018 - Designed and Developed By Danu Andaru</p>
	                </div>
	            </div>
	        </footer>
	    </div>
		
    	<!-- jQuery -->
		<script src="${js}/jquery.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
	</div>
</body>

</body>

</html>