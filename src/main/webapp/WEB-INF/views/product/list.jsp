<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>list</title>
	<link href="../resources/css/table.css" rel="styleSheet" />
	<c:import url="../template/header_css.jsp"></c:import>
	<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
<h1>
	product list입니다. 
</h1>

	<div class="table-container">
		<h1>${board} List page</h1>
		<!-- 검색 창-->
		<div class="search-form">
			<form action="./list" method="get">
				<fieldset>
					<select name="kind">
						<option value="col1">제목</option>
						<option value="col2">본문</option>
						<option value="col3">판매자</option>
					</select>
					<input type="text" name="search" value="${pager.search}">
					<button type="submit">검색</button>
				</fieldset>
			</form>

		</div>
		
		
		
			<table class="table-basic">
				<tr>
					<td>product_num</td><td>상품이름</td><td>판매자</td><td>상품가격</td><td>할인율</td><td>Hit</td>
				</tr>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.product_num}</td>
						<td><a href="./detail?product_num=${dto.product_num}">${dto.product_name}</a></td>
						<td>${dto.id}</td>
						<td>${dto.product_price}</td>
						<td>${dto.rate}</td>
						<td>${dto.hit}</td>
					</tr>				
				</c:forEach>	
			</table>
		<div>
			<c:if test="${pager.pre}">
				<a href="./list?page=${pager.startNum-1}">PREVIEW</a>
			</c:if>
		
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<a href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a>
			</c:forEach>
			
			<c:if test="${pager.next}">
				<a href="./list?page=${pager.lastNum+1}">NEXT</a>
			</c:if>
			
		</div>	
		
		<c:if test="${not empty member}">
			<a href="./add">ADD</a>
		</c:if>
	</div>



<c:import url="../template/footer.jsp"></c:import>

</body>
</html>