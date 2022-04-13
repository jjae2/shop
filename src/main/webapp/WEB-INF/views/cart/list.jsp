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
 <link rel="styleSheet" href="../resources/css/cartList.css">
 <c:import url="../template/header_css.jsp"></c:import>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>CART LIST PAGE</h1>
	



			<!-- 장바구니 리스트 -->
			<div class="content_middle_section"></div>
			<!-- 장바구니 가격 합계 -->
			<!-- cartInfo -->
			<div class="content_totalCount_section">
				
				<table class="subject_table">
					<caption>표 제목 부분</caption>
					<tbody>

						<tr>
							<th class="td_width_1"></th>
							<th class="td_width_2"></th>
							<th class="td_width_3">상품명</th>
							<th class="td_width_4">가격</th>
							<th class="td_width_4">수량</th>
							<th class="td_width_4">합계</th>
							<th class="td_width_4">삭제</th>
						</tr>
					</tbody>
				</table>
				<table class="cart_table">
					<caption>표 내용 부분</caption>
					<tbody>
						<c:forEach items="${cartList}" var="list" varStatus="i">
							<tr>
								<td class="td_width_1 cart_info"></td>
									<input type="checkbox" class="cart_checkbox input_size_20" checked="checked">
									<input type="hidden" class="cart_num" value="${list.cart_num}">
									<input type="hidden" class="id" value="${list.id}">
									<input type="hidden" class="product_num" value="${list.product_num}">
									<input type="hidden" class="com_name" value="${list.com_name}">
									<input type="hidden" class="cart_count" value="${list.cart_count}">
									<input type="hidden" class="adddate" value="${list.adddate}">
									<input type="hidden" class="product_name" value="${list.product_name}">
									<input type="hidden" class="product_price" value="${list.product_price}">
									<input type="hidden" class="rate" value="${list.rate}">
									<input type="hidden" class="salePrice" value="${list.salePrice}">
									<input type="hidden" class="totalPrice" value="${list.totalPrice}">
								<td class="td_width_2"></td>
								<td class="td_width_3">${list.product_name}</td>
								<td class="td_width_4 price_td">
									<del>정가 : <fmt:formatNumber value="${list.product_price}" pattern="#,### 원" />${list.product_price}</del><br>
									판매가 : <span class="red_color"><fmt:formatNumber value="${list.salePrice}" pattern="#,### 원" />${list.salePrice}</span><br>
								</td>
								<td class="td_width_4 table_text_align_center">
									<div class="table_text_align_center quantity_div">
										<input type="text" value="${list.cart_count}" class="quantity_input">	
										<button class="quantity_btn plus_btn">+</button>
										<button class="quantity_btn minus_btn">-</button>
									</div>
									<a class="quantity_modify_btn">변경</a>
								</td>
								<td class="td_width_4 table_text_align_center">
									<fmt:formatNumber value="${list.salePrice * list.cart_count}" pattern="#,### 원" />${list.salePrice * list.cart_count}
								</td>
								<td class="td_width_4 table_text_align_center"><button class=" delete_btn">삭제</button></td>
							</tr>
							
						</c:forEach>
					</tbody>
				</table>
				<table class="list_table">
				</table>
			</div>
			<!-- 가격 종합 -->
			<div class="content_total_section">
				<div class="total_wrap">
					<table>
						<tr>
							<td>
								<table>
									<tr>
										<td>총 상품 금액</td>
										<td>
											<span class="total_product_price">${total_product_price}</span> 원
										</td>
									</tr>
										<td>총 할인 금액</td>
										<td><span class="total_sale_pricen"></span>- ${total_sale_price}</span>원</td>
									</tr>
								</table>
							</td>
							<td>
								<table>
									<tr>
										<td></td>
										<td></td>
									</tr>
								</table>							
							</td>
						</tr>
					</table>
					<div class="boundary_div">구분선</div>
					<table>
						<tr>
							<td>
								<table>
									<tbody>
										<tr>
											<td>
												<strong>결제 금액</strong>
											</td>
											<td>
												<span class="total_payment">${total_payment}</span> 원
											</td>
										</tr>
									</tbody>
								</table>
							</td>
							<td>
								<table>
									<tbody>
									</tbody>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- 구매 버튼 영역 -->
			<div class="order_btn">
				<a>주문하기</a>
			</div>

		

			<script src="../resources/js/cart.js"></script>
			<c:import url="../template/footer.jsp"></c:import>
</body>
</html>
