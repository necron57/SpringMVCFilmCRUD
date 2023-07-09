<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


	<a href="showFilm.do">Home</a>
	<br>


	<c:choose>
		<c:when test="${film == true }">
			<p>Film has been updated</p>
		</c:when>
		<c:otherwise>
			<p>Film has not been updated, please try again!</p>
		</c:otherwise>

	</c:choose>

</body>
</html>