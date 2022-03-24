<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Home</title>
	<c:import url="./template/header_css.jsp"></c:import>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+sharp"  rel="stylesheet">
	<style type="text/css">
		.my::after {
			content: "|"
		}
	</style>
	<script type="text/javascript"></script>
</head>
<body>
	<c:import url="./template/header.jsp"></c:import>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<h1>가나다라마바사아자차카타파함</h1>
<c:import url="./template/footer.jsp"></c:import>
</body>
</html>
