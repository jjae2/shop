<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/pw.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>


	<div class="container">	
		<div class="checkout__form spad">
			<div class="row">
				<div class="col-lg-6 text-center" style="float: none; margin: 0 auto;">
					<div class="section-title">
						<h2>아이디 확인</h2>
					</div>
					<div>
						<h5>${dto.name}님의 아이디는 ${dto.id}입니다.</h5> <br>
					</div>	
					<a href="../">홈으로</a>
					<a href="./login">로그인</a>
				</div>
			</div>
		</div>	
	</div>

	<script src="../resources/js/idFind.js"></script>
</body>
</html>