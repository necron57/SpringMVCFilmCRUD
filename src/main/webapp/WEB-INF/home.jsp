<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>
	<h1>Full-Stack Films, Inc.</h1>
	<c:choose>

		<c:when test="${! empty film }">
			<h2>${film.title }</h2>
			<h2>${film.description }</h2>
		</c:when>
		<c:otherwise>
			<p>Film not found try again</p>
		</c:otherwise>
	</c:choose>

	
</body>
</html>