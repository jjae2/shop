<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>detail</title>
	<c:import url="../template/header_css.jsp"></c:import>
	<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
<h1>
	product detail입니다. 
</h1>
	<h1>${board} Detail Page</h1>
	
	<h3>Title : ${dto.product_name}</h3>
	<h3>Seller : ${dto.id}</h3>
	<h3>Content : ${dto.content}</h3>
	
<%-- 	<div>
		<c:forEach items="${dto.productDTOs}" var="f">
			<a href="./fileDown?fileNum=${f.fileNum}">${f.oriName}</a>		
		</c:forEach>
	</div> --%>
	
	<a href="./list">List</a>
	
	<c:if test="${member.id eq dto.id}">
	<a href="./delete?product_num=${dto.product_num}">Delete</a>
	<a href="./update?product_num=${dto.product_num}">update</a>
	</c:if>

	<c:forEach items="${dto.productFileDTOs}" var="f">
		<img alt="" src="../resources/upload/product/${f.fileName}">
		 <%-- <h3>${f.oriName} --%>
		<a href="./photoDown?fileNum=${f.fileNum}">${f.oriName}</a>
	</c:forEach>

	hi<h1>${dto.productFileDTOs[1].fileName}</h1>

<c:import url="../template/footer.jsp"></c:import>

</body>
</html>