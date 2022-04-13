<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>detail</title>
<link href="../resources/css/point.css" rel="styleSheet" />
<link href="../resources/css/productDetail.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>
<style type="text/css">
#scrap{
color:#35c5f0;
}

</style>

</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<div class="product_selling">
		<div class="product_selling_overview container">
			<nav
				class="commerce-category-breadcrumb-wrap product_selling_overview_category">
				<ol class="commerce-category-breadcrumb">
					<li class="commerce-category-breadcrumb_entry"><a class="link"
						href="/s1/store/category?category_num=${dto.category_num}" id="category_num">${categoryDTO.category_name}</a>
						<svg class="icon" width="8" height="8" viewBox="0 0 8 8"
							fill="currentColor" preserveAspectRatio="xMidYMid meet">
							<path d="M4.95 4L2.12 1.19l.7-.71 3.54 3.54-3.53 3.53-.7-.7z"></path></svg></li>
				</ol>

			</nav>
			<div class="product_selling_overview_container row">
				<div
					class="product_selling_overview_cover-image_wrap col-12 col-md-6 col-lg-7">
					<div class="product_selling_cover-image-container">

						<!-- 전체 -->
						<div
							class="carousel product_selling_cover-image product_selling_overview_cover-image"
							role="region" aria-roledescription="carousel">

							<!-- 메인사진 -->
							<div
								class="carouse_list-wrap product_selling_cover-image_carousel-wrap">
								<div class="carousel_list" aria-live="polite"
									style="transform: translateX(0%);">



									<div
										class="carousel_list_entry product_selling_cover-image_entry"
										role="group" aria-roledescription="slide" aria-label="1 of 5"
										style="width: 100%;">
										<img class="product_selling_cover-image_entry_image" tabindex="0" id="mainImg">
										<div class="product_selling_cover-image_timer"></div>
									</div>
								</div>
							</div>


							<!-- 후보사진 -->
							<ul class="product_selling_cover-image_list" id="candiList">




								<c:forEach items="${dto.productFileDTOs}" var="f">
									<c:if test="${f.fileSection eq 0}">
										<li class="product_selling_cover-image_list_item">
											<button
												class="product_selling_cover-image_list_btn product_selling_cover-image_list_btn_selected"
												type="button" aria-label="5개 중 1번째 항목">
												<img class="image"
													src="../resources/upload/product/${f.fileName}"
													id="candi${f.fileNum}" data-num="${f.fileNum}">
											</button>
										</li>
									</c:if>	
								</c:forEach>





							</ul>

						</div>
					</div>
				</div>
				<div
					class="product_selling_overview_content col-12 col-md-6 col-lg-5">
					<div class="product_selling_header">
						<h1 class="product_selling_header_title">
							<p class="product_selling_header_title_brand-wrap">
								<a class="product_selling_header_title_brand"
									href="/brands/home?query=%EC%A0%80%EC%8A%A4%ED%8A%B8%EC%8A%AC%EB%A6%BD&amp;affect_type=ProductSaleDetail&amp;affect_id=1193829">${memberDTO.com_name}
								</a>
							</p>
							<div class="product_selling_header_title_name-wrap">
								<span class="product_selling_header_title_name" >${dto.product_name}  </span>
								<div class="product_selling_header_action">
								<!--  스크랩 부분 -->

	<input type="hidden" value="${dto.category_num}" id="category_nums">
	
	<c:choose>
		<c:when test="${not empty member.id}">
			<button id="scrap">스크랩 하기</button>
			<button><a href="../scrap/deleteScrap?product_num=${dto.product_num}&id=${member.id}">스크랩 취소</a></button>
		</c:when>
		<c:otherwise>
			<input type="hidden" id="scrap">
		</c:otherwise>	
	</c:choose>
	 <!--  스크랩 끝 -->
									<!--<button
										 class="product_selling_header_action_button product_selling_header_action_button-scrap"
										type="button">
										<svg class="icon--stroke" aria-label="스크랩" width="24"
											height="24" fill="currentColor" stroke="currentColor"
											stroke-width="0.5" viewBox="0 0 24 24"
											preserveAspectRatio="xMidYMid meet">
											<path
												d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
										<span class="count">2,122</span>
									</button> -->
									<div class="drop-down1">
										<button class="product_selling_header_action_button" id="productUrl"
											type="button" style="cursor: pointer;">
											<svg class="icon" aria-label="공유하기" width="24" height="24"
												viewBox="0 0 24 24" fill="currentColor"
												preserveAspectRatio="xMidYMid meet">
												<path
													d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"></path></svg>
										</button>
									</div>
								</div>
							</div>
						</h1>
						<div
							class="product_selling_header_content product_selling_header_content_content--deal">
							<p class="product_selling_header_review-wrap">
								<a class="product_selling_header_review"
									href="#production-selling-review"><span
									class="product_selling_header_review_icon" aria-label="별점 4.8점"><svg
											fill="#35C5F0" width="1em" height="1em"
											preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
											<defs>
											<path id="star-path-130"
												d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
											<clipPath id="star-clip-130">
											<rect x="0" y="0" width="24" height="24"></rect></clipPath></defs>
											<use xlink:href="#star-path-130" fill="#DBDBDB"></use>
											<use clip-path="url(#star-clip-130)"
												xlink:href="#star-path-130"></use></svg> <svg fill="#35C5F0"
											width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
											viewBox="0 0 24 24">
											<defs>
											<path id="star-path-131"
												d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
											<clipPath id="star-clip-131">
											<rect x="0" y="0" width="24" height="24"></rect></clipPath></defs>
											<use xlink:href="#star-path-131" fill="#DBDBDB"></use>
											<use clip-path="url(#star-clip-131)"
												xlink:href="#star-path-131"></use></svg> <svg fill="#35C5F0"
											width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
											viewBox="0 0 24 24">
											<defs>
											<path id="star-path-132"
												d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
											<clipPath id="star-clip-132">
											<rect x="0" y="0" width="24" height="24"></rect></clipPath></defs>
											<use xlink:href="#star-path-132" fill="#DBDBDB"></use>
											<use clip-path="url(#star-clip-132)"
												xlink:href="#star-path-132"></use></svg> <svg fill="#35C5F0"
											width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
											viewBox="0 0 24 24">
											<defs>
											<path id="star-path-133"
												d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
											<clipPath id="star-clip-133">
											<rect x="0" y="0" width="24" height="24"></rect></clipPath></defs>
											<use xlink:href="#star-path-133" fill="#DBDBDB"></use>
											<use clip-path="url(#star-clip-133)"
												xlink:href="#star-path-133"></use></svg> <svg fill="#35C5F0"
											width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
											viewBox="0 0 24 24">
											<defs>
											<path id="star-path-134"
												d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
											<clipPath id="star-clip-134">
											<rect x="0" y="0" width="19.803278688524586" height="24"></rect></clipPath></defs>
											<use xlink:href="#star-path-134" fill="#DBDBDB"></use>
											<use clip-path="url(#star-clip-134)"
												xlink:href="#star-path-134"></use></svg></span><span
									class="product_selling_header_review_text"><span
										class="number"><span class="mobile-wrapper">(</span>366<span
											class="mobile-wrapper">)</span></span><span class="postfix">개
											리뷰</span></span></a>
							</p>
							<div class="product_selling_header_price">
							<c:if test="${dto.rate ne '0'}">
								<span class="product_selling_header_price_discount-deal"><span
									class="number">${dto.rate}</span><span class="percent">%</span>
								</span>
								<del class="production-selling-header__price__original">
									<span class="number">
									<fmt:formatNumber value="${dto.product_price}" pattern="#,###" />
									</span><span class="won">원</span>
								</del>
							</c:if>
								<span class="production-selling-header__price__separator"></span>
								<span class="product_selling_header_price_price-wrap">
								
								
									<span class="product_selling_header_price_price">
										<span class="number">
										<fmt:formatNumber value="${dto.totalPrice}" pattern="#,###" />
										</span>
										<span class="won">원</span>
										<c:if test="${dto.rate ne '0'}">
											<span class="product_selling_header_price_badge">
												<svg class="icon" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
													<rect width="30" height="20" fill="#F77" rx="4"></rect>
													<path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path>
												</svg>
											</span>										
										</c:if>
									</span>
									
									
									
								</span>
							</div>

							<div class="css-72tjgz e1gkvgq70"></div>

							<!-- 							<div class="css-72tjgz e1gkvgq70">
								<button type="button" class="css-vs55nv emhbdh42">
									<div class="css-px0sae emhbdh41">
										<span>할인쿠폰 받기</span>
									</div>
									<svg width="28" height="46" fill="none"
										preserveAspectRatio="xMidYMid meet">
										<g>
										<path
											d="M0 1h7.468c.592 0 1.191.215 1.864.595.452.255.857.534 1.294.834l.004.003c.251.173.514.353.801.54.88.572 1.937.903 3.069.903s2.19-.331 3.069-.903c.287-.187.548-.367.8-.54l.005-.003c.437-.3.842-.579 1.294-.834.673-.38 1.273-.595 1.864-.595H29V0h-7.468c-1.386 0-2.603.835-3.777 1.64a35.96 35.96 0 01-.732.494 4.617 4.617 0 01-2.523.741 4.617 4.617 0 01-2.524-.741 35.92 35.92 0 01-.731-.494C10.07.835 8.854 0 7.468 0H0v1zM7.468 45H0v1h7.468c1.386 0 2.603-.835 3.777-1.64l.002-.002c.245-.168.488-.334.73-.492a4.617 4.617 0 012.523-.741c.935 0 1.804.273 2.523.741.243.158.485.324.73.492l.002.002c1.174.805 2.391 1.64 3.777 1.64H29v-1h-7.468c-.591 0-1.191-.215-1.864-.595a17.204 17.204 0 01-1.294-.834 37.248 37.248 0 00-.805-.543 5.618 5.618 0 00-3.069-.903c-1.132 0-2.19.331-3.069.903-.289.188-.552.37-.805.543-.437.3-.842.579-1.294.834-.673.38-1.272.595-1.864.595z"
											fill="#6CD5F4"></path>
										<path d="M14.5 4v38" stroke="#DADCE0" stroke-dasharray="5 3"></path></g></svg>
									<div class="css-ggq6e8 emhbdh40">
										<svg aria-label="다운로드" width="30" height="30" fill="none"
											preserveAspectRatio="xMidYMid meet">
											<path
												d="M30 15c0 8.284-6.716 15-15 15-8.284 0-15-6.716-15-15C0 6.716 6.716 0 15 0c8.284 0 15 6.716 15 15z"
												fill="#E5F9FF"></path>
											<path
												d="M17.5 13.5h3.333L15 19.333 9.167 13.5H12.5v-5h5v5zM9.167 22.667V21h11.666v1.667H9.167z"
												fill="#35C5F0"></path></svg>
									</div>
								</button>
							</div> -->
						</div>
						<div class="product_selling_header_info-wrap">
							<div class="product_selling_header_delivery">
								<div class="product_selling_header_delivery_title-wrap">
									<span>배송</span>
								</div>
								<div class="product_selling_header_delivery_content-wrap">
									<span class="product_selling_header_delivery_type">배송
										상품정보 참고</span>
								</div>
							</div>
						</div>


						<!-- 브랜드 -->

						<a class="css-1jw8uh0 e3xbt9p7" href="#"><div
								class="css-gshsra e3xbt9p6">
								<svg width="24" height="24" fill="none"
									preserveAspectRatio="xMidYMid meet">
									<path
										d="M3.972 8.694c0-.26.212-.472.472-.472h12.278a.472.472 0 010 .945H4.444a.472.472 0 01-.472-.473z"
										fill="#35C5F0"></path>
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M17.51 5.5H6.492a1 1 0 00-.93.632l-.99 2.5A1 1 0 005.498 10h13.004a1 1 0 00.927-1.368l-.99-2.5a1 1 0 00-.93-.632zM3.642 8.263a2.002 2.002 0 001.397 2.684V17.5a2.5 2.5 0 002.5 2.5H16.474a2.5 2.5 0 002.487-2.5v-6.553a2.002 2.002 0 001.398-2.684l-.99-2.5a2 2 0 00-1.86-1.263H6.493a2 2 0 00-1.86 1.263l-.99 2.5zM6.04 17.5V11h11.921v6.5a1.5 1.5 0 01-1.487 1.5v-4a2 2 0 00-2-2h-.97a2 2 0 00-2 2v4H7.54a1.5 1.5 0 01-1.5-1.5zm6.464 1.5h2.97v-4a1 1 0 00-1-1h-.97a1 1 0 00-1 1v1h.847a.5.5 0 110 1h-.847v2zM8 13h1.5v1.5H8V13zm-1 0a1 1 0 011-1h1.5a1 1 0 011 1v1.5a1 1 0 01-1 1H8a1 1 0 01-1-1V13z"
										fill="#3F474D"></path></svg>
								<div class="css-158icaa e3xbt9p5">
									<span class="css-16kia55 e3xbt9p4">${memberDTO.com_name}</span>
								</div>
							</div>
							<div class="css-xq185e e3xbt9p0">
								<span>브랜드홈</span>
								<svg width="14" height="14" fill="none"
									preserveAspectRatio="xMidYMid meet">
									<path
										d="M4.083 11.375L8.312 7 4.083 2.625l.803-.875L9.916 7l-5.03 5.25-.803-.875z"
										fill="#828C94"></path></svg>
							</div></a>
					</div>


					<!-- 주문 선택 폼!!! -->
					<!-- 주문 선택 폼!!! -->
					<!-- 주문 선택 폼!!! -->


					<div
						class="product_selling_option-form product_selling_overview_option-form">
						<div
							class="product_selling_option-form_content product_selling_option-form_content-deal product_selling_option-form_form">

							<div class="order_calc">
								<div id="totalProducts" class="">
									<table border="1" summary="" style="list-style: none;">
										<thead>
											<tr>
												<th scope="col"></th>
												<th scope="col"></th>
												<th scope="col"></th>
											</tr>
										</thead>
										<tbody class="totalProducts2">
											<tr>
												<td style="text-align: left;">${dto.product_name} <input type="hidden" id="product_name" value="${dto.product_name}"> </td>
												<td><span class="quantity" id="quantity_wrap"> <input
														id="quantity" name="quantity" value="1" type="text"
														style="ime-mode: disabled;"
														onKeyPress="return checkNum(event)"> <input
														type="hidden" name="stock_hidden" id="stock_hidden"
														class="stock_hidden" value="${dto.stock}"> <a
														type="button" class="updown QuantityUp"> <img
															class="up"
															src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
															alt="수량증가">
													</a> <a type="button" class="updwon QuantityDown"> <img
															class="down"
															src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
															alt="수량감소">
													</a>
												</span></td>
												<td class="right">
													<span class="quantity_price" id="quantity_price">
														<fmt:formatNumber value="${dto.totalPrice}" pattern="#,###" />
													 	</span>원</span>
													</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>


							</div>



							<!-- 						<div class="production-select-dropdown">
								<div class="production-select-dropdown__button">
									<button class="production-select-button" type="button">
										<div class="production-select-button__production">
											<div class="production-select-button__production__blank">상품을
												선택하세요.</div>
											<div class="production-select-button__production__icon">
												<svg width="1em" height="1em" viewBox="0 0 16 16"
													preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd"
														d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg>
											</div>
										</div>
									</button>
								</div>
							</div> -->





							<ul class="selling-option-form-content__list"></ul>
							<p class="selling-option-form-content__price">
								<span class="selling-option-form-content__price__left">주문금액</span><span
									class="selling-option-form-content__price__right"><span
									class="selling-option-form-content__price__number"
									id="quantity_price1">
									<fmt:formatNumber value="${dto.totalPrice}" pattern="#,###" />
									</span>원</span>
							</p>

						</div>
						<input type="hidden" value="${member.id}" id="purchaser">
						<input type="hidden" value="${dto.product_num}" id="product_num">
						<input type="hidden" name="quantity_price_hidden" id="quantity_price_hidden" class="quantity_price_hidden" value="${dto.totalPrice}">
						<div class="production-selling-option-form__footer"
							id="cart_order">
							<button
								class="button button--color-blue-inverted button--size-55 button--shape-4"
								type="button" id="cart">장바구니</button>
							<button
								class="button button--color-blue button--size-55 button--shape-4"
								type="button" id="purchase">바로구매</button>
						</div>
					</div>


					<!-- 주문 선택 폼 끝!!! -->
					<!-- 주문 선택 폼 끝!!! -->
					<!-- 주문 선택 폼 끝!!! -->

				</div>
			</div>
		</div>
		<!-- 		<div class="production-selling__card-gallery-wrap container">
			<div
				class="production-selling-section production-selling-section--placeholder">
				<div class="production-selling-section__header">
					<div class="production-selling-section__title"></div>
					<div class="production-selling-section__right"></div>
				</div>
				<div class="gallery-wrap"></div>
			</div>
		</div> -->
		<!-- ?? -->
		<div class="product_selling_navigation_border"></div>




		<div class="sticky-container product_selling_navigation_wrap"
			style="top: 130px; transition: top 0.1s ease 0s;">
			<!-- position: sticky; -->
			<div class="sticky-child product_selling_navigation"
				style="position: relative;">
				<nav class="product_selling_navigation_content">
					<ol class="product_selling_navigation_list">
						<li><a
							class="product_selling_navigation_item product_selling_navigation_item--active"
							href="#production-selling-information">상품정보</a></li>
						<li><a class="product_selling_navigation_item"
							href="#production-selling-review">리뷰<span
								class="product_selling_navigation_item_count">366</span></a></li>
						<li><a class="product_selling_navigation_item"
							href="#production-selling-question">문의<span
								class="product_selling_navigation_item_count" id="product_selling_navigation_item_count">0</span></a></li>
						<li><a class="product_selling_navigation_item"
							href="#production-selling-delivery">배송/환불</a></li>
						<li><a class="product_selling_navigation_item"
							href="#production-selling-suggestion">추천</a></li>
					</ol>
				</nav>
			</div>
		</div>





		<div class="product_selling_detail-wrap container">
			<div class="product_selling_detail row">
				<div class="product_selling_detail_content col-12 col-lg-8">
					<div class="product_selling_content">


						<!--============== 상품 ==============-->
						<!--============== 상품 ==============-->
						<!--============== 상품 ==============-->


						<a id="production-selling-information"></a>
						<!-- 이동구간 -->
						<div
							class="production-selling-description production-selling-description--notice production-selling-description--open">
							<div class="production-selling-description__content">
								<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/descriptions/1_1644919184150_T8HUqZ3i.jpg?gif=1&amp;w=720">
								<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/descriptions/2_1644919184197_egWgoU.jpg?gif=1&amp;w=720">
								<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/descriptions/1_1648432365826_kFOoGrM.jpg?gif=1&amp;w=720">
								<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/descriptions/2_1648432365892_e.jpg?gif=1&amp;w=720">
								<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/descriptions/3_1648432365956_fB.jpg?gif=1&amp;w=720">
								<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/descriptions/4_1648432365996_8N.jpg?gif=1&amp;w=720">
							</div>
						</div>


						<!--============== 리뷰 ==============-->
						<!--============== 리뷰 ==============-->
						<!--============== 리뷰 ==============-->
						<!-- 397 - 987 -->
							      <h1>리뷰 쓰기</h1>
  
<form name="myform" id="myform" action="./addReview" method="post">
     <div class="pointdiv">
        <legend class="pointlegend">별점 평가</legend>
        <legend class="pointlegend">닉네임:${member.id}</legend>
        만족도
        <input type="radio" name="dto.reviewDTO.review_point" value="5" id="rate1"><label for="rate1">⭐</label>
        <input type="radio" name="dto.reviewDTO.review_point" value="4" id="rate2"><label for="rate2">⭐</label>
        <input type="radio" name="dto.reviewDTO.review_point" value="3" id="rate3"><label for="rate3">⭐</label>
        <input type="radio" name="dto.reviewDTO.review_point" value="2" id="rate4"><label for="rate4">⭐</label>
        <input type="radio" name="dto.reviewDTO.review_point" value="1" id="rate5"><label for="rate5">⭐</label>
    </div>
  	<div class="pointdiv">
		<input type="hidden" name="product_num" value="${dto.product_num}" id="review_product_num">  
		<input type="hidden" readonly name="id" value="${member.id}" id="review_id">
		<textarea rows="10" cols="40" name="contents" id="review_contents"></textarea>
		<button type="button" id="save">리뷰 등록</button>
	</div>
  </form>
	<hr>
	<hr>
	<table id="reviewResult">
	</table>



						<!--============== 리뷰 끝 ==============-->
						<!--============== 리뷰 끝 ==============-->
						<!--============== 리뷰 끝 ==============-->
						<!-- 397 - 967 -->



						<!--============== 문의 ==============-->
						<!--============== 문의 ==============-->
						<!--============== 문의 ==============-->

						<a id="production-selling-question"></a>
						<div id="qnaListResult">
							
						</div>

						<!--============== 문의 끝 ==============-->
						<!--============== 문의 끝 ==============-->
						<!--============== 문의 끝 ==============-->





						<!--============== 배송 ==============-->
						<!--============== 배송 ==============-->
						<!--============== 배송 ==============-->
						<a id="production-selling-delivery"></a>
						<section class="production-selling-section">
							<header class="production-selling-section__header">
								<h1 class="production-selling-section__title">배송/교환/환불</h1>
							</header>
							<div class="deal-production-delivery-terms">
								<section class="production-selling-section">
									<header class="production-selling-section__header">
										<h1 class="production-selling-section__title">배송</h1>
									</header>
									<table class="production-selling-table">
										<tbody>
											<tr>
												<th>배송</th>
												<td>오늘의집 배송상품</td>
											</tr>
											<tr>
												<th>배송비</th>
												<td>무료배송</td>
											</tr>
											<tr>
												<th>배송불가 지역</th>
												<td>도서산간 지역 / 제주도</td>
											</tr>
										</tbody>
									</table>
								</section>
								<section class="production-selling-section">
									<header class="production-selling-section__header">
										<h1 class="production-selling-section__title">교환/환불</h1>
									</header>
									<div class="production-selling-refund">
										<table
											class="production-selling-table production-selling-refund__table">
											<tbody>
												<tr>
													<th>반품배송비</th>
													<td>0원 (최초 배송비가 무료인 경우 0원 부과)</td>
												</tr>
												<tr>
													<th>교환배송비</th>
													<td>0원</td>
												</tr>
												<tr>
													<th>보내실 곳</th>
													<td>(17382) 경기 이천시 마장면 마도로 175 오늘의집 물류센터</td>
												</tr>
											</tbody>
										</table>
										<h2 class="production-selling-refund__title">반품/교환 사유에 따른
											요청 가능 기간</h2>
										<p class="production-selling-refund__note">반품 시 먼저 판매자와
											연락하셔서 반품사유, 택배사, 배송비, 반품지 주소 등을 협의하신 후 반품상품을 발송해 주시기 바랍니다.</p>
										<ol class="production-selling-refund__list">
											<li>구매자 단순 변심은 상품 수령 후 7일 이내&nbsp;<small>(구매자
													반품배송비 부담)</small></li>
											<li>표시/광고와 상이, 상품하자의 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을
												안 날로부터 30일 이내.<br>둘 중 하나 경과 시 반품/교환 불가&nbsp;<small>(판매자
													반품배송비 부담)</small>
											</li>
										</ol>
										<h2 class="production-selling-refund__title">반품/교환 불가능 사유</h2>
										<p class="production-selling-refund__note">아래와 같은 경우
											반품/교환이 불가능합니다.</p>
										<ol class="production-selling-refund__list">
											<li>반품요청기간이 지난 경우</li>
											<li>구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우&nbsp;<small>(단,
													상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)</small></li>
											<li>포장을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우&nbsp;<small>(예:
													식품, 화장품)</small></li>
											<li>구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우&nbsp;<small>(라벨이
													떨어진 의류 또는 태그가 떨어진 명품관 상품인 경우)</small></li>
											<li>시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우&nbsp;<small>(예:
													식품, 화장품)</small></li>
											<li>고객주문 확인 후 상품제작에 들어가는 주문제작상품</li>
											<li>복제가 가능한 상품 등의 포장을 훼손한 경우&nbsp;<small>(CD/DVD/GAME/도서의
													경우 포장 개봉 시)</small></li>
										</ol>
									</div>
								</section>
								
								<!--  -->
								<!--  -->
								<!--  -->

								<section class="production-selling-section">
									<header class="production-selling-section__header">
										<h1 class="production-selling-section__title">판매자 정보</h1>
									</header>
									<div>
										<table class="production-selling-table">
											<tbody>
												<tr>
													<th>상호</th>
													<td>${memberDTO.com_name}</td>
												</tr>
												<tr>
													<th>대표자</th>
													<td>${memberDTO.name}</td>
												</tr>
												<tr>
													<th>사업장소재지</th>
													<td>${memberDTO.com_address}</td>
												</tr>
												<tr>
													<th>고객센터 전화번호</th>
													<td>1670-0876</td>
												</tr>
												<tr>
													<th>E-mail</th>
													<td>${memberDTO.email}</td>
												</tr>
												<tr>
													<th>사업자 등록번호</th>
													<td>119-86-91245  DTO 생성해야됨</td>
												</tr>
											</tbody>
										</table>
									</div>
								</section>
							</div>
						</section>


						<!--============== 배송 끝 ==============-->
						<!--============== 배송 끝 ==============-->
						<!--============== 배송 끝 ==============-->

					</div>
				</div>
			</div>


			<!--============== 구매 사이드바 ==============-->
			<!--============== 구매 사이드바 ==============-->
			<!--============== 구매 사이드바 ==============-->

<!-- 			<div class="production-selling__detail__sidebar col-4">
				<div class="sticky-container production-selling-sidebar-wrap"
					style="height: 807px;">
					<div class="sticky-child production-selling-sidebar"
						style="height: 807px; box-sizing: border-box; transition: top 0.1s ease 0s; width: 365.25px; top: 133px;">
						position: fixed;
						<section
							class="production-selling-sidebar-content production-selling-sidebar__content">
							<div
								class="production-selling-option-form production-selling-sidebar-content__option-form">
								<div
									class="selling-option-form-content deal-selling-option-form-content production-selling-option-form__form">


									<div class="production-select-dropdown">
										<div class="production-select-dropdown__button">
											<button class="production-select-button" type="button">
												<div class="production-select-button__production">
													<div class="production-select-button__production__index">1</div>
													<div
														class="production-select-button__production__image--wrap">
														<img class="production-select-button__production__image"
															src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164394059102175971.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8"
															srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164394059102175971.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164394059102175971.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164394059102175971.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;q=0.8 3x">
													</div>
													<div class="production-select-button__production__text">Air
														45T 탄탄한 항균 스프링 매트리스 (싱글/슈퍼싱글/퀸)</div>
													<div class="production-select-button__production__icon">
														<svg width="1em" height="1em" viewBox="0 0 16 16"
															preserveAspectRatio="xMidYMid meet">
															<path fill="currentColor" fill-rule="evenodd"
																d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg>
													</div>
												</div>
											</button>
										</div>
									</div>



									<div class="selling-option-form-content__form">
										<div class="selling-option-select-input">
											<div
												class="input-group select-input selling-option-select-input__option selling-option-select-input__option-1 focused">
												<select class="form-control empty"><option value=""
														disabled="">사이즈</option>
													<option value="0" disabled="">Air 45T 항균원단 싱글 S
														(4/9 입고예정)(99,000원) / 품절</option>
													<option value="1" disabled="">Air 45T 항균원단 슈퍼싱글 SS
														(4/9 입고예정)(109,000원) / 품절</option>
													<option value="2">Air 45T 항균원단 퀸 Q(149,000원)</option></select><span
													class="select-input__icon"><svg class="icon"
														width="10" height="10" preserveAspectRatio="xMidYMid meet"
														style="fill: currentcolor;">
														<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
											</div>
										</div>
									</div>
									<ul class="selling-option-form-content__list">
										<li><article class="selling-option-item">
												<h1 class="selling-option-item__production">Air 45T 탄탄한
													항균 스프링 매트리스 (싱글/슈퍼싱글/퀸)</h1>
												<h2 class="selling-option-item__name">Air 45T 항균원단 퀸 Q</h2>
												<button class="selling-option-item__delete" type="button"
													aria-label="삭제">
													<svg width="12" height="12" viewBox="0 0 12 12"
														fill="currentColor" preserveAspectRatio="xMidYMid meet">
														<path fill-rule="nonzero"
															d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
												</button>
												<div class="selling-option-item__controls">
													<div class="selling-option-item__quantity">
														<div class="input-group select-input option-count-input">
															<select class="form-control"><option value="0">1</option>
																<option value="1">2</option>
																<option value="2">3</option>
																<option value="3">4</option>
																<option value="4">5</option>
																<option value="5">6</option>
																<option value="6">7</option>
																<option value="7">8</option>
																<option value="8">9</option>
																<option value="9">10+</option></select><span
																class="select-input__icon"><svg class="icon"
																	width="10" height="10"
																	preserveAspectRatio="xMidYMid meet"
																	style="fill: currentcolor;">
																	<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
														</div>
													</div>
													<p class="selling-option-item__price">
														<span class="selling-option-item__price__number">149,000</span>원
													</p>
												</div>
											</article></li>
									</ul>
									<p class="selling-option-form-content__price">
										<span class="selling-option-form-content__price__left">주문금액</span><span
											class="selling-option-form-content__price__right"><span
											class="selling-option-form-content__price__number">149,000</span>원</span>
									</p>
								</div>
								<div class="production-selling-option-form__footer">
									<button
										class="button button--color-gray-14-inverted button--size-55 button--shape-4 production-selling-sidebar-content__scrap"
										type="button">
										<svg class="icon--stroke" aria-label="스크랩" width="24"
											height="24" fill="currentColor" stroke="currentColor"
											stroke-width="0.5" viewBox="0 0 24 24"
											preserveAspectRatio="xMidYMid meet">
											<path
												d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
									</button>
									<button
										class="button button--color-blue-inverted button--size-55 button--shape-4"
										type="button">장바구니</button>
									<button
										class="button button--color-blue button--size-55 button--shape-4"
										type="button">바로구매</button>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div> -->

			<!--============== 구매 사이드바 끝 ==============-->
			<!--============== 구매 사이드바 끝 ==============-->
			<!--============== 구매 사이드바 끝 ==============-->





		</div>
	</div>
	

	
	<div id="qnaAddResult">
		<div class="product_question_wrap_close" id="product_question_wrap_close"></div>
		
	</div>
	<script src="../resources/js/scrap.js"></script>
	<script src="../resources/js/review.js"></script>
	<script src="../resources/js/productDetail.js"></script>
	<c:import url="../template/footer.jsp"></c:import>

</body>
</html>