<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href="../resources/css/table.css" rel="styleSheet" />
 -->
<!--  <link rel="styleSheet" href="../resources/css/cartList.css">
 --><%--  <c:import url="../template/header_css.jsp"></c:import>
 --%></head>
<body>

	<h1>CART LIST PAGE</h1>
	${cartList}

		<c:if test="${cartList == null}">
			<h1>장바구니가 비어있습니다.</h1>
			<a href="../s1" class="btn_shopping">쇼핑하러 </a>
		</c:if>
	
	

	<div class="cart_wrap">
		<div class="cart_container">
			<div class="cart_2_row">
				<div class="cart_left">
					<div class="cart_left_container">
						<!-- 체크박스 전체 여부-->
						<div class="all_check_input">
							<input type="checkbox" class="all_check_input_box" checked="checked"><span class="all_check_span">전체선택</span>
						</div>
						<!-- href 상품과 연결해야함 -->
						<a class="product_detail">
							<div class="product_img">
							</div>
								<c:forEach items="${cartList}" var="list">
									
								<div class="cart_info">
									<input type="hidden" class="cart_num" value="${list.cart_num}">
									<input type="hidden" class="id" value="${list.id}">
									<input type="hidden" class="product_num" value="${list.product_num }">
									<input type="hidden" class="cart_count" value="${list.cart_count }">
									<input type="hidden" class="adddate" value="${list.adddate}">
									<input type="hidden" class="product_name" value="${list.product_name }">
									<input type="hidden" class="product_price" value="${list.product_price }">
									<input type="hidden" class="rate" value="${list.rate }">
									<input type="hidden" class="salePrice" value="${list.salePrice }">
									<input type="hidden" class="totalPrice" value="${list.salePrice * list.cart_count }"> 
								</div>
									
									
									
								<div class="product_contents">
									<h3 class="product_name">상품명 : ${list.product_name}</h3>
									<h4 class="product_price">판매가 :${list.product_price}</h4>
									<h4 class="cart_count">수량 : ${list.cart_count }</h4>
																	
									<button type="button">+</button>
									<button type="button">-</button>
								</div>
								</c:forEach>
						</a>
			


					</div>

				</div>

			</div>
			
			<div class="cart_right">
				<c:forEach items="${cartList}" var="list">
					<div class="fin_price">
						<!-- 총 상품 금액 -->
						<div class="total_product_price">
							총 상품금액 ${list.product_price * list.cart_count}
						</div>
						<!-- 총 할인금액 -->
 						 <div class="total_discount_amount">
							총 할인금액 ${list.totalPrice}
						</div>
						<!-- 결제금액 -->
					 	<div class="total_payment">
							결제금액 ${list.salePrice*list.cart_count}
						</div>  
					</div> 



				</c:forEach>

			</div>




		</div>

	</div>
	
 	<script>
		$(document).ready(function(){
			
			let totalPrice = 0; // 총가격
			let totalCount = 0; //총갯수
			let totalKind = 0; //총종류
			
			$(".cart_info").each(function(index, element){
				
				//총가격
				totalPrice += parseLong($(element).find(".totalPrice").val());
				
				//총갯수
				totalCount += parseLong($(element).find(".cart_count").val());
				
				//총종류
				totalKind += 1;
				
			});
			
			//값 삽입
			$(".totalPrice").text(totalPrice);
			$(".cart_count").text(totalCount);
			$(".totalKind").text(totalKind);
		});
	</script>

	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>
