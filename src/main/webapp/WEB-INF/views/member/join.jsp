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
	<h1>Member Join Page</h1>
	<form class="frm" action="./join" method="post" id="frm" enctype="multipart/form-data">
		<fieldset>
			<legend>ID</legend>
			<input type="text" name="id" id="id">
			<div id="idResult"></div>
		</fieldset>
		<fieldset>
			<legend>PASSWORD</legend>
			<input type="password" id="pw" name="pw"
				placeholder="8글자 이상 12글자 이하로 작성">
			<div id="pwResult"></div>
		</fieldset>
		<fieldset>
			<legend>PASSWORD 확인</legend>
			<input type="password" id="pw2" name="pw2"
				placeholder="8글자 이상 12글자 이하로 작성">
			<div id="pw2Result"></div>
		</fieldset>
		<fieldset>
			<legend>Profile</legend>
			<input type="file" name="photo" id="photo">
		</fieldset>
		<fieldset>
			<legend>NAME</legend>
			<input type="text" name="name" id="name">
		</fieldset>
		<fieldset>
			<legend>GENDER</legend>
			<input type="text" name="gender" id="gender">
		</fieldset>
		<fieldset>
			<legend>AGE</legend>
			<input type="text" name="age" id="age">
		</fieldset>
		<fieldset>
			<legend>EMAIL</legend>
			<input type="text" name="email" id="email">
		</fieldset>
		<fieldset>
			<legend>ADDRESS</legend>
			<input type="text" name="address" id="address">
		</fieldset>
		<fieldset>
			<legend>PHONE</legend>
			<input type="text" name="phone" id="phone">
		</fieldset>

		<fieldset>
			<button type="button" id="btn">JOIN</button>
		</fieldset>
	</form>
	
	<script type="text/javascript" src="../resources/js/join.js"></script>
	<c:import url="../template/footer.jsp"></c:import>

</body>
</html>