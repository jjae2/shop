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
	
	<h1>스크랩 북</h1>
 	 <hr>
<c:forEach items="${scrap}" var="s" varStatus="i">

<div>상품번호:${s.product_num}</div>
<div>카테고리 번호:${s.category_num}</div>
<div>상품이름:${s.product_name}</div>
</c:forEach>

<%-- <c:if test="${member.id eq scrap.id}">	
<button class="del" type="button" data-num="${scrap.scrap_num}">삭 제</button>
</c:if> --%>
</body>
</html>