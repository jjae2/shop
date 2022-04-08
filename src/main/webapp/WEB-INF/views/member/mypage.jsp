<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>My Page</h1>
	<hr>
	<div>
		<h3>이름 : ${dto.name}</h3>
		<h3>ID : ${dto.id}</h3>
		<h3>PW : ${dto.pw}</h3>
		<h3>PHONE : ${dto.phone}</h3>
		<h3>EMAIL : ${dto.email}</h3>
	</div>
	<a href="../scrap/listScrap?id=${dto.id}">스크랩 북</a>
	<a href="./update?id=${dto.id}">Update</a>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>