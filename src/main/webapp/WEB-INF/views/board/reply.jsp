<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${board } Reply page</h1>
	
	<form action="./reply" method="post">
		<input type="hidden" value="${dto.num }" name="num">
		Title <input type="text" name="title">
		Contents<textarea name="contents" rows="10" cols="10"></textarea>
		Writer <input type="text" name="id">
		
		<input type="submit" value="reply">
	
	</form>
</body>
</html>