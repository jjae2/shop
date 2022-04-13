<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/table.css" rel="styleSheet" />
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
		<table class="table-basic">
			<tr>
				<th>아이디</th>
				<td>${detail.id}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${detail.name}</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>${detail.gender}</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>${detail.age}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${detail.email}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${detail.address}</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${detail.phone}</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${detail.enrolldate}</td>
			</tr>
			<tr>
				<th>회사 이름</th>
				<td>${detail.com_name}</td>
			</tr>
			<tr>
				<th>회사 주소</th>
				<td>${detail.com_address}</td>
			</tr>
			<tr>
				<th>회원 등급</th>
					<td><c:choose>
					<c:when test="${detail.auth_id eq 0}">
					구매자
					</c:when>
					<c:when test="${detail.auth_id eq 1}">
					판매자
					</c:when>
					<c:otherwise>
					관리자
					</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>							
		</table>
		<div>
		<a href="./updateA?id=${detail.id}">등급 변경</a>
		<!-- <button>쿠폰 주기</button> -->
		</div>
		<c:import url="../template/footer.jsp"></c:import>
</body>
</html>