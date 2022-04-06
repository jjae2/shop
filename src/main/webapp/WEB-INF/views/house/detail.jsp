<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<h1>집들이 디테일 페이지</h1>

	<h2>Title::${dto.title}</h2>
	<h2>Id::${dto.id}</h2>
	<h2>Type::${dto.house_type}</h2>
	<h2>Space::${dto.house_space}</h2>
	<h2>Style::${dto.house_style}</h2>
	
	<div>
	<c:forEach items="${dto.fileDTOs}" var="f">
	<img alt="" src="../resources/upload/house/${f.fileName}">
	</c:forEach>
	
	<h2>Contents::${dto.contents}</h2>
	</div>

	<hr>
	<div>
		<input type="hidden" name="num" value="${dto.num}" id="num"> 
		<input type="text" readonly name="id" value="${member.id}" id="id">
		<textarea rows="" cols="30" name="contents" id="contents"></textarea>
		<button type="button" id="reply">등록</button>
	</div>
	


	<table id="replyResult">

	</table>

	<c:if test="${member.id eq dto.id}">
		<a href="./delete?num=${dto.num}">글 삭제</a>
		<a href="./update?num=${dto.num}">글 수정</a>
	</c:if>
	<a href="./list">List</a>

	<script src="../resources/js/houseReply.js"></script>

	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>