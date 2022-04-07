<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>My Page</h1>
	<hr>
<c:forEach items="${scrap}" var="scrap" varStatus="i">

<div>상품번호:${scrap.product_num}</div>
<div>상품이름:${scrap.product_name}</div>
</c:forEach>

<c:if test="${member.id eq scrap.id}">	
<button class="del" type="button" data-num="${scrap.scrap_num}">삭 제</button>
</c:if>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>