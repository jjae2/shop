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
	<h1>${board} Detail Page</h1>
	
	<h3>Title : ${dto.title}</h3>
	<h3>Writer : ${dto.id}</h3>
	<h3>Contents : ${dto.contents}</h3>
<%-- 	<div>
		<c:forEach items="${dto.fileDTOs}" var="f">
			<a href="./fileDown?fileNum=${f.fileNum}">${f.oriName}</a>		
		</c:forEach>
	</div>
	 --%>
	<a href="./list">List</a>
	
	<c:if test="${members.id eq dto.id}">
	<a href="./delete?num=${dto.num}">Delete</a>
	<a href="./update?num=${dto.num}">update</a>
	</c:if> 
	
	<c:if test="${board ne 'notice'}">
		<a href="./reply?num=${dto.num}">Reply</a>
	</c:if>
</body>
</html>