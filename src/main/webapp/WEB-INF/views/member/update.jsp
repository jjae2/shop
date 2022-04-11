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
	<h1>Member Update Page</h1>

	<form action="./update" method="post">
		<div>
			NAME<input type="text" name="name" value="${member.name}">
		</div>
		<div>
			GENDER<input type="text" name="gender" value="${member.gender}">
		</div>
		<div>
			AGE<input type="text" name="age" value="${member.age}">
		</div>
		<div>
			EMAIL<input type="text" name="email" value="${member.email}">
		</div>
		<div>
			ADDRESS<input type="text" name="address" value="${member.address}">
		</div>
		<div>
			PHONE<input type="text" name="phone" value="${member.phone}">
		</div>
		<button type="submit">제출</button>
	</form>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>