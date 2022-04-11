<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/category.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="category_container">
		<div class="category_wrap container">
			<div class="category-wrap2 row">
				<div class="category_side-bar col-12 col-md-3">
					<section class="category_list">
						<ul class="category_list_title">
							<c:forEach items="${category}" var="dto">
								<li class="category_list_title_item">
									<c:if test="${pager.category_num eq dto.category_num}">
										<a href="/s1/store/category?category_num=${dto.category_num}" style="color: #35c5f0;">${dto.category_name}</a>
									</c:if>
									<c:if test="${pager.category_num ne dto.category_num}">
										<a href="/s1/store/category?category_num=${dto.category_num}" >${dto.category_name}</a>
									</c:if>	
								</li>
							</c:forEach>
						</ul>
					</section>
				</div>
				<!--=============================================================================-->
				<!-- 사이드바 끝 -->
				<!--=============================================================================-->
				<div class="category_content col-12 col-md-9">

					<div class="category_content_filter">
						<div class="css-0 e1dxjhw510">
							<div class="filter">
								<div class="css-bjn8wh e1dxjhw52">


									<div class="category_content_filter_list">
										<input type="hidden" id="categoryBtn11" value="0">
										<input type="hidden" id="categoryBtn22" value="0">
										<input type="hidden" id="categoryBtn33" value="0">
										
										
										<input type="hidden" id="categoryFilterSale1" value="0">																				
										<input type="hidden" id="categoryFilterBrand1" value="">
										<input type="hidden" id="categoryFilterPrice1" value="0" data-price="-1">
										
										<input type="hidden" id="productArrayBtn1" value="0">
										
										<input type="hidden" id="productArrayBtn11" value="0">
										<input type="hidden" id="productArrayBtn22" value="0">
										<input type="hidden" id="productArrayBtn33" value="0">
										<input type="hidden" id="productArrayBtn44" value="0">
										<input type="hidden" id="productArrayBtnSubmit" value="1">
										<ul class="category_content_filter_list_left" id="category_content_filter_list_left">
	
											<!--=============================================================================-->
											<!-- 카테고리 필터 시작 -->
											<!--=============================================================================-->
	
	
											<li class="css-3vsrkk e5q0h4i1"><!-- _3Z6oR _3AsCW _2tsrJ css-18qxpg0 e5q0h4i0 -->
												<button class="_3Z6oR _3AsCW _2tsrJ css-1mxooxr e5q0h4i0" id="categoryBtn1">
													<svg class="icon" width="12" height="10" fill="none" preserveAspectRatio="xMidYMid meet"><!-- rgb(55, 80, 125) -->
														<path d="M4.51 6.84L10.322.85 11.5 1.993 4.569 9.138.5 5.35l1.119-1.202L4.51 6.84z" fill="#C2C8CC"></path>
													</svg>
													세일
												</button>
											</li>
	
	
											<li class="category_content_filter_list_item"><div
													class="drop-down panel-drop-down">
													<button class="category_content_filter_button category_filter_num2"
														id="categoryBtn2" type="button">
														브랜드
														<svg class="chevron category_filter_num2" width="12" height="12"
															preserveAspectRatio="xMidYMid meet">
																<g fill="none" fill-rule="evenodd">
																<path d="M0 0h12v12H0z"></path>
																<path fill="currentColor" fill-rule="nonzero"
																d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
													</button>
												</div></li>
	
											<li class="category_content_filter_list_item"><div
													class="drop-down panel-drop-down">
													<button class="category_content_filter_button category_filter_num3"
														id="categoryBtn3" type="button">
														가격
														<svg class="chevron category_filter_num3" width="12" height="12"
															preserveAspectRatio="xMidYMid meet">
																<g fill="none" fill-rule="evenodd">
																<path d="M0 0h12v12H0z"></path>
																<path fill="currentColor" fill-rule="nonzero"
																d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
													</button>
												</div></li>
	
	
	
										</ul>
									</div>
								
								
								
								
								
									<div id="categoryFilterView">

    
									</div>							
									
									
									
									
									
								
								
									<div id="categoryFilterResult">
									
									

    
    
									</div>

									<div class="category_content_array">
										
										<p class="category_content_array_number"
											id="categoryProductTotal"></p>
										
										<div class="category_content_array_list">
											
											<div class="category_content_array_list2">
												<div class="drop-down panel-drop-down">
													<div id="productArray"></div>
													<button class="category_content_array_list_button"
														type="button" id="productArrayBtn">
														<div style="display: inline-block;">인기순</div>
														<svg class="icon" width="8" height="8" viewBox="0 0 8 8"
															preserveAspectRatio="xMidYMid meet">
																<path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg>
													</button>
												</div>
											</div>
										</div>
									</div>

								</div>




							</div>
						</div>
					</div>
					<div>
						<div>
							<div class="virtualized-list category-feed__content__content row"
								id="productResult"
								style="padding-top: 0px; padding-bottom: 6090px; transform: translateY(0px);">


							</div>
						</div>
					</div>
					<!--===============================================================-->
					<!--==============================필터 끝============================-->
					<!--===============================================================-->

					<input type="hidden" name="num" value="${pager.category_num}"
						id="category_num">
					<%-- category_num=${dto.category_num} --%>

					<!--===============================================================-->
					<!--==============================상품 끝============================-->
					<!--===============================================================-->
				</div>
			</div>
			<!-- 			<button type="button" class="css-1mrh0h4 e1fqj3bt1">
				<span class="css-ovwftq e1fqj3bt0"><span
					class="_arrow_up_24 css-cwcsvq"></span></span>
			</button> -->
			<!-- 맨위로 올려주는 버튼 -->
		</div>
	</div>




	<!-- 인기순 정렬 등등 -->
	<!-- 	<div>
		<div
			class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2"
			data-popout="true"
			style="position: absolute; z-index: 1000; top: 2300.57px; right: 155.4px;">
			<div
				class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
				<div class="drop-down-panel" data-panel-title="정렬"
					data-panel-parents="">
					<ul class="property-filter-panel-entry-list wide">


						<li class="property-filter-panel-entry-list__item-wrap">
							<button class="property-filter-panel-entry-list__item selected"
								type="button">
								<div class="property-filter-panel-entry-list__item__header">
									<div class="property-filter-panel-entry-list__item__group">
										<div class="_2xClz input-type">
											<input type="radio" class="fs-4H" value=""> <span
												class="_2ekY2"></span>
										</div>
										<span class="property-filter-panel-entry-list__item__title">판매순</span>
									</div>
								</div>
							</button>
						</li>




					</ul>
				</div>
			</div>
		</div>
	</div>
 -->

	<!-- 인기순 정렬 등등 -->



	<script src="../resources/js/category.js"></script>
	<c:import url="../template/footer.jsp"></c:import>


</body>
</html>

