<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>
	<h1>${board} Add Page</h1>
	
	<form action="./add" method="post" enctype="multipart/form-data">
	<fieldset>
		Category<select name="category_num">
			<option value="1">가구</option>
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
			<option value="17">식품</option>
		</select>	
	</fieldset>
	<fieldset>
		SELLER<input type="text" name="id" value="${member.id}" readonly><!--  -->
	</fieldset>
	<fieldset>PRODUCT_NAME<input type="text" name="product_name"></fieldset>
	<fieldset>PRODUCT_PRICE<input type="text" name="product_price"></fieldset>
	<fieldset>Content<textarea name="content" rows="" cols=""></textarea></fieldset>
	<fieldset>STOCK<input type="text" name="stock"></fieldset>
	<fieldset>RATE<input type="text" name="rate"></fieldset>	
	<div id="fileResult"></div>
	<div>
		<button type="button" id="fileAdd">FileAdd</button>
		<button type="button" class="del">Sample DEL</button>
	</div>
		<button type="submit">ADD</button>
	</form>
	<!-- <script src="../resources/js/file.js"></script> -->
	
<c:import url="../template/footer.jsp"></c:import>

</body>
</html>