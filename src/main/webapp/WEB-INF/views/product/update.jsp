<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>update</title>
	<c:import url="../template/header_css.jsp"></c:import>
	<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
<h1>
	product update입니다. 
</h1>
<div id="ddd1" style="background-color: gray;">hi</div>
	<h1>${board} update Page</h1>
	
	<form id="jong" action="./update" method="post" enctype="multipart/form-data">
		<input type="hidden" name="product_num" value="${dto.product_num}">		
	
	
	
		<fieldset>
		Category<select name="category_num" id="category_num">
			<option value="1" >가구</option>
			<option value="2">패브릭</option>
			<option value="3">조명</option>
			<option value="4">가전</option>
			<option value="5">주방용품</option>
			<option value="6">데코·식물</option>
			<option value="7">수납·정리</option>
			<option value="8">생활용품</option>
			<option value="9">생필품</option>			
			<option value="10">공구·DIY</option>
			<option value="11">인테리어시공</option>
			<option value="12">반려동물</option>
			<option value="13">캠핑용품</option>
			<option value="14">실내운동</option>
			<option value="15">유아·아동</option>
			<option value="16">렌탈</option>
			<option value="17" selected="selected">식품</option>
		</select>	
	</fieldset>
	<fieldset>
		SELLER<input type="text" name="id" value="${member.id}" readonly><!--  -->
	</fieldset>
	<fieldset>PRODUCT_NAME<input type="text" name="product_name"  value="${dto.product_name}"></fieldset>
	<fieldset>PRODUCT_PRICE<input type="text" name="product_price" value="${dto.product_price}"></fieldset>
	<fieldset>Content<textarea name="content" rows="" cols="" value="${dto.content}" ></textarea></fieldset>
<%--<fieldset>Content<input type="text" name="content" value="${dto.content}" ></fieldset> --%>
	<fieldset>STOCK<input type="text" name="stock" value="${dto.stock}"></fieldset>
	<fieldset>RATE<input type="text" name="rate" value="${dto.rate}"></fieldset>	
	<div id="fileResult"></div>
	<div>
		<button type="button" id="fileAdd">FileAdd</button>
		<button type="button" class="del">Sample DEL</button>
	</div>
		<button type="submit">UPDATE</button>
		
	</form>

<script type="text/javascript" src="../resources/js/update.js"></script>

<c:import url="../template/footer.jsp"></c:import>

</body>
</html>