<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/table.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>
	<h1>${board} Detail Page</h1>
	
	<h3>Title : ${dto.title}</h3>
	<h3>Writer : ${dto.id}</h3>
	<h3>Contents : ${dto.contents}</h3>
<%-- 	<div>
		<c:forEach items="${dto.fileDTOs}" var="f">
			<a href="./fileDown?fileNum=${f.fileNum}">${f.oriName}</a>		
		</c:forEach>
	</div> --%>
	
	<div>
		<input type="hidden" name="num" value="${dto.num}" id="num">
		<input type="text" readonly name="writer" value="${member.id}" id="id">
		<textarea rows="" cols="" name="contents" id="contents"></textarea>
		<button type="button" id="reply">REPLY</button>
	</div>
	

	<table class="table-basic" id="replyResult">
		<tr>
			<td>내용</td><td>작성자</td><td>수정</td>
		</tr>
		
	
	</table>
	
	<a href="./list">List</a>
	
	<c:if test="${member.id eq dto.id}">
	<a href="./delete?num=${dto.num}">Delete</a>
	<a href="./update?num=${dto.num}">update</a>
	</c:if>
	
	<c:if test="${board ne 'notice'}">
		<a href="./reply?num=${dto.num}">Reply</a>
	</c:if>
<c:import url="../template/footer.jsp"></c:import>
<script src="../resources/js/qnaReply.js"></script>
</body>
</html>