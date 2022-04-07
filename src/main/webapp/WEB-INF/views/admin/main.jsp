<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<c:import url="../template/header_css.jsp"></c:import>
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

	<c:import url="../template/header.jsp"></c:import>
<div class=all>
	<div class="row side_nav">
		<ul class="nav nav-pills nav-stacked">
			<li class="active li_btns"><a>관리자 메뉴</a></li>
			<li class="li_btns"><a href="../board/list">공지사항 관리</a></li>
			<li class="li_btns"><a href="./list">회원 관리</a></li>
		</ul>
	</div>
</div>

	<c:import url="../template/footer.jsp"></c:import>

</body>
</body>
</html>