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
		<form action="./updateA" method="post">
		<input type="hidden" name = "id" value="${dto.id}">
		<table class="table-basic">
			
			<tr>
				<th>아이디</th>
				<td>${dto.id}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${dto.name}</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${dto.enrolldate}</td>
			</tr>
			<tr>
				<th>회사 이름</th>
				<td>${dto.com_name}</td>
			</tr>
			<tr>
				<th>회사 주소</th>
				<td>${dto.com_address}</td>
			</tr>	
			<tr>
				<th>회원 등급</th>
					<td><select name="auth_id">
					<option value ="0">구매자</option>
					<option value ="1">판매자</option>
					</select><button type="submit">변경</button></td>	
			</tr>					
		</table>
		</form>	
		<c:import url="../template/footer.jsp"></c:import>
</body>
</html>