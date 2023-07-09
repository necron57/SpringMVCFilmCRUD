<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<a href="viewFilm.jsp">Home</a>
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