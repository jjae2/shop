<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/table.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/menu.css" rel="styleSheet" />
<link href="../resources/css/sellmain.css" rel="styleSheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
<input type="hidden" value="${member.id}" id="id">
<nav class="shopnav">
<h1>판매자 메뉴</h1>
<ul class="shopmenu">
  <li><a href="#">상품관리</a></li>
  <li><a href="#">배송관리</a></li>
  <li><a href="#">상품문의</a></li>
</ul>
</nav>

<section class="container product_manage">
	<div class="managePool_name">상품관리</div>
	<div class="managePool_table_wrap" id="productListResult">
		asd
		<table class="managePool_table">
			<tr>
				<td></td>
			</tr>
		
		</table>
	</div>
</section>

<hr>






<section class="container product_qna_manage">
	<div class="managePool_name">상품문의</div>
	<div class="managePool_table_wrap" id="QnaListResult">
		
		asd
	</div>
	
</section>

<script src="../resources/js/sellmain.js"></script>
<c:import url="../template/footer.jsp"></c:import>

</body>
</html>