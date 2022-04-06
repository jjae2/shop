<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/house.css" rel="styleSheet" />
</head>
<body>
		
		<table class="table-basic">
			<tr>
				<td>아이디</td>
				<td>제품명</td>
			</tr>
			<c:forEach items="${list}" var="p">
				<tr>
					<td>${p.product_num}</td>
					<td><a href="./detail?product_num=${p.product_num}">${p.product_name}</a></td>		
			</c:forEach>
		</table>
		
</body>
</html>