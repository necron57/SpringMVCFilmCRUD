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
	<a href="searchById.html">Look up the film by its ID</a>
	<br>
	<a href="searchByKeyword.html">Look up the film by searching a word
		in the title or description</a>
	<br>
	<a href="createAFilm.html">Add your own movie here!</a>

	<c:choose>
		<c:when test="${film == true }">
			<p>Film has been TERMINATED</p>
		</c:when>
		<c:otherwise>
			<p>Film cannot be deleted please try again!</p>
		</c:otherwise>

	</c:choose>


</body>
</html>