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

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}'
</script>

	<!-- Bootstrap Core CSS -->
	<link href="${css}/bootstrap.min.css" rel="stylesheet">
	
	<!-- Bootstrap Readable CSS -->
	<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
	
	<!-- Custom CSS -->
	<link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>

	<div class="wrapper">	
		<!-- nav  -->
		<%@include file="./shared/navbar.jsp" %>
		
		<!-- Page Content -->
		<div class="content">
			<c:if test="${userClickHome == true}">
				<%@include file="home.jsp" %>
			</c:if>
			
			<!-- User click about -->
			<c:if test="${userClickAbout == true}">
				<%@include file="about.jsp" %>
			</c:if>
			
			<!-- User click contact -->
			<c:if test="${userClickContact == true}">
				<%@include file="contact.jsp" %>
			</c:if>
			
			<!-- User click all products -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp" %>
			</c:if>
	    </div>
		
		<!-- footer  -->
		<%@include file="./shared/footer.jsp" %>
		
    	<!-- jQuery -->
		<script src="${js}/jquery.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
		
		<!-- Self coded JavaScript -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</body>

</html>