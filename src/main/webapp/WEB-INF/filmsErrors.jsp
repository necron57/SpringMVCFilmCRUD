<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
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

h1 {
	color: white;
}
</style>
</head>
<body>
	<h1>Full-Stack Films, Inc./ERROR</h1>
	<a href="showByKeyWord.do">Home</a>
	<br>


	<c:choose>
		<c:when test="${films != true }">
			<p>Films cannot be found please try again</p>
		</c:when>


	</c:choose>
	


</body>
</html>