<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link
	href="${pageContext.request.contextPath}/component/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/component/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/component/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/component/js/popper.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/component/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/component/js/bootstrap.min.js"></script>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <!-- Brand -->
	<a class="navbar-brand" href="${pageContext.request.contextPath}/">Infinity</a> <!-- Links -->
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="#">Link 1</a></li>
		<li class="nav-item"><a class="nav-link" href="#">Link 2</a></li>

		<!-- Dropdown -->
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown" aria-expanded="true">
				My Departments </a>
			<div class="dropdown-menu">
				<security:authorize access="hasAnyRole('ADMIN')">
					<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/">Admin</a>
				</security:authorize>
				<security:authorize access="hasAnyRole('CEO')">
					<a class="dropdown-item"
						href="${pageContext.request.contextPath}/ceo/">CEO</a>
				</security:authorize>
				<security:authorize access="hasAnyRole('RND','MANAGER')">
					<a class="dropdown-item"
						href="${pageContext.request.contextPath}/r&d/">R&D</a>
				</security:authorize>
			</div></li>
	</ul>
	<ul class="navbar-nav navbar-right">
		<li  class="nav-item"><a href="#"><span class="glyphicon glyphicon-user"></span>
				Sign Up</a></li>
		<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
				Logout</a></li>
	</ul>
	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input class="btn btn-lg btn-primary btn-block"
			style="width: 100px; height: 50px" type="submit" value="logout">
	</form:form>
	
	</nav>
	
</body>
</html>