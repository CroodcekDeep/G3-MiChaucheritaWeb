<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<title>Error</title>
</head>
<body>
	<div class="alert alert-danger alert-dismissible fade show"
		role="alert">
		<h1>Error:</h1>
		<p>${error}</p>
		<a class="btn btn-primary" href="DashboardController?ruta=ver">Volver
			al dashboard</a>
	</div>
</body>
</html>