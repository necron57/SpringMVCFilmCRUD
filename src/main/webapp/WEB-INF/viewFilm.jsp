<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View A Film</title>
<style>
body {
	background-color: gray;
	font: sans-serif;
	font-size: 21px;
	margin: 10px 100px 10px 100px;
}

p {
	color: white;
}

form {
	color: white;
}

h3 {
	color: white;
}

a {
	color: white;
}
</style>
</head>
<body>
<body>
	<h3>Search Film By Entering a Film ID</h3>
	<form action="showFilm.do" method="POST">
	<label for="filmId">Enter the ID to search by: </label>
		<br><input type="number" name="filmId"> <br>
		<button>Get Film</button>
	</form>
	<c:choose>
		<c:when test="${not empty film }">
		

			<p>Film ID: ${film.id }</p>
			<p>Title: ${film.title }</p>
			<p>Description: ${film.description }</p>
			<p>Language ID: ${film.languageId }</p>
			<p>Actors: ${film.actors }</p>

			<a href="deleteFilm.do?filmId=${film.id }">Delete this film</a>
			<br />
			<h3>OR</h3>
			<h3>Update this Film</h3>
			<br>

			<form action="updateFilm.do" method="POST">
				<label for="title">Enter in the new Title:</label> <input
					type="text" id="title" name="title" value="${film.title }">
				<br> <br> <label for="description">Enter in the new Description:</label> <input
					type="text" name="description" value="${film.description }">
				<br> <br> <label for="languageId">Enter in the new Language ID:</label> <input
					type="number" name="languageId" value="${film.languageId }">
				<br> <br> <label for="filmId">Choose the Film ID that should be updated:</label> <input
					type="number" name="filmId" value="${film.id }"> <br>
				<br>
				<button>Update Film</button>

			</form>
			<br />
		</c:when>

	</c:choose>


	<h3>Search Film By Entering a KeyWord</h3>
	<form action="showByKeyWord.do" method="POST">
	<label for="filmKeyword">Enter the keyword to search: </label>
		<br><input type="text" name="filmKeyword"> <br>
		<button>Get Film</button>
	</form>
</body>

<c:choose>
	<c:when test="${not empty films }">
		<c:forEach var="item" items="${films }">
			<p>Film id: ${item.id }</p>
			<p>Title: ${item.title }</p>
			<p>Description: ${item.description  }</p>
			<p>Language ID: ${item.languageId }</p>
			<p>
				Actors: <br />${item.actors }</p>
			<br />
			<a href="deleteFilm.do?filmId=${item.id }">Delete this film</a>
			<h3>OR</h3>
			<h3>Update this Film</h3>
			<br>
			<form action="updateFilm.do" method="POST">
				<label for="title">Enter in the new Title:</label> <input
					type="text" id="title" name="title" value="${item.title }">
				<br> <br> <label for="description"> Enter in the new Description:</label> <input
					type="text" name="description" value="${item.description }">
				<br> <br> <label for="languageId"> Enter in the new Language ID:</label> <input
					type="number" name="languageId" value="${item.languageId }">
				<br> <br> <label for="filmId">Choose the Film ID that should be updated:</label> <input
					type="number" name="filmId" value="${item.id }"> <br>
				<br>
				<button>Update Film</button>

			</form>
			<br />
		</c:forEach>


	</c:when>
</c:choose>




<br><a href="createAFilm.html">Add your own movie here!</a>


</body>


</html>