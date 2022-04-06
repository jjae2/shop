<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<c:import url="./template/header_css.jsp"></c:import>
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+sharp"
	rel="stylesheet">
<style type="text/css">
.my::after {
	content: "|"
}
.all{
padding:10px 100px;
}
</style>

<script type="text/javascript"></script>
</head>
<body>

	<c:import url="./template/header.jsp"></c:import>
<div class=all>
	<c:choose>
		<c:when test="${member.auth_id==2 }">
			<h1>관리자 홈입니다</h1>
		</c:when>
		<c:otherwise>
			<h1>스토어 홈입니다</h1>
		</c:otherwise>
	</c:choose>
</div>

	<c:import url="./template/footer.jsp"></c:import>

</body>
</html>