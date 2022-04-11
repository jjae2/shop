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
		
		<table class="table-basic">
			<tr>
				<td>아이디</td>
				<td>이름</td>
				<td>성별</td>
				<td>나이</td>
				<td>이메일</td>
				<td>주소</td>
				<td>전화번호</td>
				<td>가입일</td>
				<td>회원 등급</td>
	
			</tr>
			<c:forEach items="${list}" var="m">
				<tr>
					<td><a href="./detail?id=${m.id}">${m.id}</a></td>
					<td>${m.name}</td>
					<td>${m.gender}</td>
					<td>${m.age}</td>
					<td>${m.email}</td>
					<td>${m.address}</td>
					<td>${m.phone}</td>
					<td>${m.enrolldate}</td>
					<td><c:choose>
					<c:when test="${m.auth_id eq 0}">
					구매자
					</c:when>
					<c:when test="${m.auth_id eq 1}">
					판매자
					</c:when>
					<c:otherwise>
					관리자
					</c:otherwise>
					</c:choose></td>				
			</c:forEach>
		</table>
		
</body>
</html>