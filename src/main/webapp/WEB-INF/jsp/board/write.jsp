<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<h1>게시판 글쓰기 화면</h1>
	<form action="write.do" method="post">
		제목<input type="text" name="title"/><br>
		작성자<input type="text" name="author"/><br>
		내용<textarea rows="5" cols="20" name="content"></textarea><br>
		<input type="submit" value="저장"/>
	</form>
	<a href="list.do">목록보기</a>
</body>
</html>