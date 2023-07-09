<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View A Film</title>
</head>
<body>
<body>
	<h3>Search Film By Entering a Film ID</h3>
	<form action="showFilm.do" method="POST">
		<input type="number" name="filmId"> <br>
		<button>Get Film</button>
	</form>
	
	
	  <h3>Search Film By Entering a KeyWord</h3>
    <form action="showByKeyWord.do" method="POST">
		<input type="text" name="filmKeyword"> <br>
		<button>Get Film</button>	
	</form>
</body>

<c:choose>
		<c:when test="${not empty film }">

			<p>Title: ${film.title }</p>
			<p>Description: ${film.description }</p>
			<p>Language ID: ${film.languageId }</p>
			<p>Film ID: ${film.id }</p>

			<a href="deleteFilm.do?filmId=${film.id }">Delete</a>
			<br/>
			
		</c:when>
		<c:when test="${not empty films }">
			<c:forEach var="item" items="${films }">
				<p>${item }</p>
				<br/>
				
			</c:forEach>

		</c:when>
	</c:choose>
	<h2>Update Your Film</h2>
	<br>
	
	<form action="updateFilm.do" method="POST" >
	  <label for="title">Enter in the new Title:</label>
	  <input type="text" id="title" name="title" value="${film.title }"> 
	  <br>
	  <br>
	  <label for="description"> Description:</label>
	  <input type="text" name="description">
	  <br>
	  <br>
	  <label for="languageId"> Language ID:</label>
	  <input type="number" name="languageId">
	  <br>
	  <br>
	  <label for="filmId">Film ID:</label>
	  <input type="number" name="filmId">
	  <br>
	  <br>
	  <button>Update Film</button>
	  
	 </form>




</body>
</html>