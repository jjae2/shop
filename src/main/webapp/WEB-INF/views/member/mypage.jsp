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
		
		<h3>프로필 :
		
		<img alt="" src="../resources/upload/member/${member.memberFileDTO.fileName}"> </h3>
		<h3>ID : ${member.id}</h3>
		<h3>이름 : ${member.name}</h3>
		<h3>성별 : ${member.gender}</h3>
		<h3>나이 : ${member.age}</h3>
		<h3>이메일 : ${member.email}</h3>
		<h3>주소 : ${member.address}</h3>
		<h3>번호 : ${member.phone}</h3>
		<h3>가입일 : ${member.enrolldate}</h3>
		<h3>회사이름 : ${member.com_name}</h3>
		<h3>회사주소 : ${member.com_address}</h3>
	</div>

	<a href="../scrap/listScrap?id=${dto.id}">스크랩 북</a>
	<a href="./update?id=${member.id}">회원정보 수정</a>
	<a href="./updatePw?id=${member.id}">비밀번호 수정</a>

	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>