<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<meta charset="UTF-8">
	<title>Dairies</title>
</head>
<body>
	<p>공통 에러 페이지</p>
	<p>${exception}{}</p>
	<ul>
		<c:forEach var="list" items="${exception.getStackTrace() }">
		${list.toString()}
		</c:forEach>
	</ul>

</body>
</html>