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
		<c:when test="${not empty film }">
			<h2>${film.title }</h2>
			<h2>${film.description }</h2>
			<a href="deleteFilm.do?filmId=${film.id }">Delete</a>
			<br/>
			<a href="updateFilm.do?filmId=${film })">Update</a>
		</c:when>
		<c:when test="${not empty films }">
			<c:forEach var="item" items="${films }">
				<p>${item }</p>
				<a href="deleteFilm.do?filmId=${item.id }">Delete</a>
				<br/>
				<a href="updateFilm.do?filmId=${film })">Update</a>
			</c:forEach>

		</c:when>
	</c:choose>


</body>
</html>