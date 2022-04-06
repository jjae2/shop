<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/house.css" rel="styleSheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	<div class="all">
	<h1>집들이 페이지</h1>
	
	<div class="table-container">
		<div class="search-form">
			<form action="./list" method="get">
				<fieldset>
					<select name="kind">
						<option value="col1">주거 형태</option>
						<option value="col2">평 수</option>
						<option value="col3">인테리어 스타일</option>
					</select> <input type="text" name="search" value="${pager.search}">
					<button type="submit">검색</button>
				</fieldset>
			</form>
			<div>
			<c:if test="${not empty member}">
			<a href="./add">집들이 글쓰기</a>
			</c:if>
			</div>
		</div>
		<table class="table-basic">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>내용</td>
				<td>ID</td>
				<td>주거 형태</td>
				<td>평 수</td>
				<td>인테리어 스타일</td>
				<td>조회 수</td>
			</tr>
			<c:forEach items="${list}" var="h">
				<tr>
					<td>${h.num }</td>
					<td><a href="./detail?num=${h.num}">${h.title}</a></td>
					<td>${h.contents}</td>
					<td>${h.id}</td>
					<td>${h.house_type}</td>
					<td>${h.house_space}</td>
					<td>${h.house_style}</td>
					<td>${h.hit}</td>
				</tr>
			</c:forEach>
		</table>
		<div>
			<c:if test="${pager.pre}">
				<a href="./list?page=${pager.startNum-1}">이전</a>
			</c:if>
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<a href="./list?page=${i}">${i}</a>
			</c:forEach>
			<c:if test="${pager.next}">
				<a href="./list?page=${pager.lastNum+1}">다음</a>
			</c:if>
		</div>
		
	</div>
	</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>