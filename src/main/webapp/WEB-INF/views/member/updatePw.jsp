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
	<h1>비밀번호 수정</h1>

	<form action="./updatePw" method="post">
	<input type="hidden" id="id" name="id" value="${member.id}">
	<input type="hidden" id="pwC" name="pwC" value="${member.pw}">
		<div>
			기존 비밀번호<input type="password" id="pw1" name="pw1">
				<div id="pw1Result"></div>
		</div>
		<div>
			새로운 비밀번호<input type="password" id="pw2" name="pw2" placeholder="8글자 이상 12글자이하">
				<div id="pw2Result"></div>
		</div>
		<div>
			새로운 비밀번호 확인<input type="password" id="pw" name="pw" placeholder="8글자 이상 12글자이하">
				<div id="pwResult"></div>
		</div>
		<button type="submit">비밀번호 변경</button>
	</form>
	<script type="text/javascript" src="../resources/js/pw.js"></script>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>