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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<%-- <link
	href="${pageContext.request.contextPath}/component/css/bootstrap.css"
	rel="stylesheet"> --%>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/component/js/header.js"></script>
<body>
	<header id="top" class="navbar navbar-static-top bs-docs-nav"
		role="banner">
		<%-- <div id="headerBg">
			<div class="container">
				<div class="fleft appName">
					JDScribe Web Portal<br />
					<p class="welcomeSection slidePopUp">
						Welcome, <span slidePopUp id="username">shiva</span>
				</div>
				<div class="fright">
					<div class="deereLogo">
						<img class="img-responsive" src="${pageContext.request.contextPath}/component/images/logo.png" >
					</div>
				</div>
				<div class="clr"></div>

			</div>
		</div> --%>

		<!-- Navigation -->

		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"
						class="header-link"><img src="${pageContext.request.contextPath}/component/images/homeIcon.png" class="header-link" />
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">

						<li class="active dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false">Metadata Management <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<security:authorize access="hasAnyRole('ADMIN')">
									<li><a class="dropdown-item"
										href="${pageContext.request.contextPath}/admin/">Admin</a></li>
								</security:authorize>
								<security:authorize access="hasAnyRole('CEO')">
									<li><a class="dropdown-item"
										href="${pageContext.request.contextPath}/ceo/">CEO</a></li>
								</security:authorize>
								<security:authorize access="hasAnyRole('RND','MANAGER')">
									<li><a class="dropdown-item"
										href="${pageContext.request.contextPath}/r&d/">R&D</a></li>
								</security:authorize>


							</ul></li>


						<li class="active dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false">Admin <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#" class="header-link">Product Management</a></li>
								<li><a href="#" class="header-link">Announcements</a></li>
								<li><a href="#" class="header-link">Users</a></li>
							</ul>
							</li>


						<li><a href="#" class="header-link">View &amp; Download
								Report</a></li>
								
								
								<li><a href="#" class="header-link"><img
					src="${pageContext.request.contextPath}/component/images/shiva.jpg"
					class="img-circle" alt="Cinque Terre" width="50" height="50"></a></li>

						<%-- <security:authorize access="hasRole('System Admin')">	
								<li><a href="${createAnnouncementUrl}" class="header-link">Announcements</a></li>	
							</security:authorize> --%>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<!-- <div class="loading" id="loading"></div>		 -->
	</header>
	
	
	<footer class="bs-docs-footer" role="contentinfo">
		<div class="container">
			<div class="footer">

				<div class="fright">Copyright &copy; 2015 Deere & Company. All
					Rights Reserved.</div>
				<div class="clr"></div>
			</div>
		</div>
	</footer>
</body>
</html>