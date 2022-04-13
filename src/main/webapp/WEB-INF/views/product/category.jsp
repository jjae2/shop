<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>list</title>
	<link href="../resources/css/table.css" rel="styleSheet" />
<link href="../resources/css/category.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>

<script type="text/javascript"></script>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>Category Page</h1>

	<div class="category_container">
		<div class="category_wrap container">
			<div class="category-wrap2 row">
				<div class="category_side-bar col-12 col-md-3">
					<section class="category_list">
						<ul class="category_list_title">		
							<c:forEach items="${category}" var="dto">	
								<li class="category_list_title_item">

										<a href="/s1/product/category?category_num=${dto.category_num}">${dto.category_name}</a>

								
									
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
									<div class="e1dxjhw59 css-e0zdhe e1abxous7"
										data-guided-filter="true">
										<div class="css-1cfy386 e1abxous6">
											<img class="css-1vobdx0 e1abxous5"
												src="https://image.ohou.se/i/bucketplace-v2-development/static/commerce/ic_filter.png?gif=1&amp;w=36"
												srcset="https://image.ohou.se/i/bucketplace-v2-development/static/commerce/ic_filter.png?gif=1&amp;w=36 1.5x,https://image.ohou.se/i/bucketplace-v2-development/static/commerce/ic_filter.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/static/commerce/ic_filter.png?gif=1&amp;w=72 3x">
											<h2 class="css-jsj0rh e1abxous4">필터로 원하는 상품 찾기</h2>
										</div>
										<div class="css-1fpax12 e1abxous3">
											<div class="css-z4i8sy e1xabc723">
												<h3 class="css-ayvgpi e1xabc722">사용 인원</h3>
												<div class="css-1s29gt3 e1xabc721">
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">1인</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">2인</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">4인</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">3인</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">6인</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">5인</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">8인 이상</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">7인</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
												</div>
											</div>
											<div class="css-z4i8sy e1xabc723">
												<h3 class="css-ayvgpi e1xabc722">브랜드</h3>
												<div class="css-1s29gt3 e1xabc721">
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">한샘</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">자코모</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">리바트</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">이케아</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">삼익가구</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">레이디가구</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">오트밀하우스</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">보니애가구</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">먼데이하우스</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">마켓비</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">시디즈</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">두닷</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">데스커</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">휴도</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">베스트리빙</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">우드레이</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">포더홈</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">지누스</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">영가구</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">리샘</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
												</div>
											</div>
											<div class="css-z4i8sy e1xabc723">
												<h3 class="css-ayvgpi e1xabc722">배송</h3>
												<div class="css-1s29gt3 e1xabc721">
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">오늘의집 배송</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">무료 배송</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">제주도 배송 가능</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">희망일배송</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-rwizb9 e1rkw3mx4">
														<span class="css-co50un e1rkw3mx2">업체직접배송</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
												</div>
											</div>
											<div class="css-z4i8sy e1xabc723">
												<h3 class="css-ayvgpi e1xabc722">우드톤</h3>
												<div class="css-1s29gt3 e1xabc721">
													<div class="e1xabc720 css-1pm4n3m e1rkw3mx4">
														<div class="css-99gd5n e1rkw3mx3"
															style="background-image: url(&quot;https://image.ohou.se/i/bucketplace-v2-development/static/commerce/property/10006_10006001.png?gif=1&amp;w=40&quot;); background-size: contain; background-repeat: no-repeat;"></div>
														<span class="css-co50un e1rkw3mx2">밝은 우드톤</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-1pm4n3m e1rkw3mx4">
														<div class="css-jt6aiy e1rkw3mx3"
															style="background-image: url(&quot;https://image.ohou.se/i/bucketplace-v2-development/static/commerce/property/10006_10006003.png?gif=1&amp;w=40&quot;); background-size: contain; background-repeat: no-repeat;"></div>
														<span class="css-co50un e1rkw3mx2">어두운 우드톤</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
													<div class="e1xabc720 css-1pm4n3m e1rkw3mx4">
														<div class="css-jt6aiy e1rkw3mx3"
															style="background-image: url(&quot;https://image.ohou.se/i/bucketplace-v2-development/static/commerce/property/10006_10006002.png?gif=1&amp;w=40&quot;); background-size: contain; background-repeat: no-repeat;"></div>
														<span class="css-co50un e1rkw3mx2">중간 우드톤</span>
														<div role="button" class="css-bl687k e1rkw3mx0"></div>
													</div>
												</div>
											</div>
										</div>
										<button type="button" class="css-5htutp e1abxous2">
											필터 더보기
											<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
												preserveAspectRatio="xMidYMid meet">
												<path fill-rule="evenodd" clip-rule="evenodd"
													d="M2.00011 2.93945L6.00011 6.93945L10.0001 2.93945L11.0608 4.00011L6.00011 9.06077L0.939453 4.00011L2.00011 2.93945Z"
													fill="currentColor"></path></svg>
										</button>
									</div>
									
									
									
									
									<div class="category_content_filter_list">
										<ul class="category_content_filter_list_left">
<!-- 											<li class="css-3vsrkk e5q0h4i1"><button
													class="_3Z6oR _3AsCW _2tsrJ css-1mxooxr e5q0h4i0">
													<svg class="icon" width="12" height="10" fill="none"
														preserveAspectRatio="xMidYMid meet">
														<path
															d="M4.51 6.84L10.322.85 11.5 1.993 4.569 9.138.5 5.35l1.119-1.202L4.51 6.84z"
															fill="#C2C8CC"></path></svg>
													봄 세일
												</button></li> -->

<!--=============================================================================-->
<!-- 카테고리 필터 시작 -->
<!--=============================================================================-->

											<li class="category_content_filter_list_item"><div
													class="drop-down panel-drop-down">
													<button class="category_content_filter_button category_content_filter_button_open" type="button">
														세일
														<svg class="chevron" width="12" height="12"
															preserveAspectRatio="xMidYMid meet">
															<g fill="none" fill-rule="evenodd">
															<path d="M0 0h12v12H0z"></path>
															<path fill="currentColor" fill-rule="nonzero"
																d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
													</button>
												</div></li>
										</ul>
									</div>
<!--=============================================================================-->
<!-- 카테고리 필터 끝 -->
<!--=============================================================================-->				
									<div class="category_content_filter_tag category_content_filter_tag_open">
										
										<div class="category_content_filter_tag_list-container">
											<ul class="category_content_filter_tag_list">
											
											
												<li class="category_content_filter_tag_list_item">
													<button class="category_content_filter_bar-tag" type="button">
														오늘의집 배송<svg class="icon" width="12" height="12" preserveAspectRatio="xMidYMid meet">
															<g fill="none" fill-rule="evenodd" opacity=".5">
																<path d="M0 0h12v12H0z"></path>
																<path fill="currentColor" fill-rule="nonzero" d="M9.778 1.5l.722.75-3.778 3.722L6.75 6l-.028.028L10.5 9.75l-.722.75L6 6.745 2.222 10.5 1.5 9.75l3.777-3.723L5.25 6l.027-.027L1.5 2.25l.722-.75L6 5.255 9.778 1.5z"></path>
															</g>
														</svg>
													</button>
												</li>
												
												
											</ul>
										</div>
										
										<button class="category_content_filter_tag_list_clear" type="button">
											<svg class="icon" width="1em" height="1em" viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
													<path d="M0 0h20v20H0z"></path>
													<path fill="currentColor" fill-rule="nonzero" d="M8.958.833c3.844 0 7.157 2.488 8.417 6.019l.887-1.538a.834.834 0 011.444.833L17.67 9.671a.833.833 0 01-1.138.305l-3.524-2.035a.833.833 0 11.833-1.443l2.054 1.186C14.943 4.654 12.174 2.5 8.958 2.5c-4.022 0-7.291 3.353-7.291 7.5s3.269 7.5 7.291 7.5c2.47 0 4.73-1.272 6.075-3.35a.833.833 0 011.399.905c-1.647 2.546-4.43 4.112-7.474 4.112C4.006 19.167 0 15.058 0 10S4.006.833 8.958.833z"></path>
												</g>
											</svg>
											<span class="text">초기화</span>
										</button>
										
									</div>
									
									<div class="category_content_array">
										<p class="category_content_array_number">전체 152,544개</p>
										<div class="category_content_array_list">
											<div class="category_content_array_list2">
												<div class="drop-down panel-drop-down">
													<button class="category_content_array_list_button"
														type="button">
														인기순
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
					
					<!--===============================================================-->
					<!--==============================필터 끝============================-->
					<!--===============================================================-->
					
					
					<div>
						<div class="virtualized-list category-feed__content__content row"
							style="padding-top: 0px; padding-bottom: 6090px; transform: translateY(0px);" id="categoryProductResult">
							
<%-- 					<c:forEach items="${dto.productFileDTOs}" var="f">
							<img alt="" src="../resources/upload/product/${f.fileName}">
							 <h3>${f.oriName}
							<a href="./photoDown?fileNum=${f.fileNum}">${f.oriName}</a>
						</c:forEach>
					
						hi<h1>${dto.productFileDTOs[1].fileName}</h1> --%>
														
<%-- 					<td>${dto.product_num}</td>
						<td><a href="./detail?product_num=${dto.product_num}">${dto.product_name}</a></td>
						<td>${dto.id}</td>
						<td>${dto.product_price}</td>
						<td>${dto.rate}</td>
						<td>${dto.hit}</td> --%>
				<!--  -->
				
				
						<c:forEach items="${list}" var="dto">
							<div class="category-feed__content__item-wrap col-6 col-lg-4"
								style="">
								<article class="production-item" id="product-1193829">
									<a class="production-item__overlay"
										href="./detail?product_num=${dto.product_num}"></a>
									<div class="production-item-image production-item__image">
										
										<img class="image" alt=""
											src="../resources/upload/product/${dto.productFileDTO.fileName}">

										<button
											class="production-item-scrap-badge production-item-image__scrap-badge"
											type="button">
											<svg xmlns="http://www.w3.org/2000/svg" width="24"
												height="24" viewBox="0 0 24 24" class="inactive-icon">
												<defs>
												<path id="scrap-icon-10-b"
													d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
												<filter id="scrap-icon-10-a" width="150%" height="150%"
													x="-25%" y="-25%" filterUnits="objectBoundingBox">
												<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
												<feGaussianBlur in="shadowOffsetOuter1"
													result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
												<feComposite in="shadowBlurOuter1" in2="SourceAlpha"
													operator="out" result="shadowBlurOuter1"></feComposite>
												<feColorMatrix in="shadowBlurOuter1"
													values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter>
												<filter id="scrap-icon-10-c" width="150%" height="150%"
													x="-25%" y="-25%" filterUnits="objectBoundingBox">
												<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1"
													stdDeviation="1.5"></feGaussianBlur>
												<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
												<feComposite in="shadowOffsetInner1" in2="SourceAlpha"
													k2="-1" k3="1" operator="arithmetic"
													result="shadowInnerInner1"></feComposite>
												<feColorMatrix in="shadowInnerInner1"
													values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs>
												<g fill="none" fill-rule="nonzero"
													transform="matrix(1 0 0 -1 0 24)">
												<use fill="#000" filter="url(#scrap-icon-10-a)"
													href="#scrap-icon-10-b"></use>
												<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-10-b"></use>
												<use fill="#000" filter="url(#scrap-icon-10-c)"
													href="#scrap-icon-10-b"></use>
												<path stroke="#FFF"
													d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
											<svg class="active-icon" width="24" height="24"
												viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path fill="#35C5F0" fill-rule="nonzero"
													d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
										</button>
										
										
										<div class="production-item-image__dark-overlay"></div>
									</div>
									<div class="production-item__content">
										<h1 class="production-item__header">
											<span class="production-item__header__brand">${dto.id}</span><span
												class="production-item__header__name">${dto.product_name}</span>
										</h1>
										<span class="production-item-price"><span
											class="production-item-price__rate">${dto.rate}<span
												class="percentage">% </span></span><span
											class="production-item-price__price">${dto.product_price}</span></span>
										<p class="production-item-stats production-item-stats--review">
											<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
												preserveAspectRatio="xMidYMid meet">
												<path fill="currentColor" fill-rule="evenodd"
													d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
											<strong class="avg">4.8</strong> 리뷰 343
										</p>
<!-- 										<span class="production-item-badge-list"><svg
												class="icon" aria-label="무료배송" width="47" height="20"
												viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
												<rect width="47" height="20" fill="#000" fill-opacity=".07"
													fill-rule="nonzero" rx="4"></rect>
												<path fill="#757575"
													d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z">
													</path></g></svg>
											<svg class="icon" aria-label="특가" width="30" height="20"
												viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
												<rect width="30" height="20" fill="#F77" rx="4"></rect>
												<path fill="#fff"
													d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z">
													</path></svg></span> --> <!-- 무료배송 특가 -->
									</div>
								</article>
							</div>
						</c:forEach>
				<!--  -->
							
							
							
						</div>
					</div>
					<!--===============================================================-->
					<!--==============================상품 끝============================-->
					<!--===============================================================-->	
				</div>
			</div>
<!-- 			<button type="button" class="css-1mrh0h4 e1fqj3bt1">
				<span class="css-ovwftq e1fqj3bt0"><span
					class="_arrow_up_24 css-cwcsvq"></span></span>
			</button> --> <!-- 맨위로 올려주는 버튼 -->
		</div>
	</div>
	
	
	<div>
		<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2" data-popout="true" style="position: absolute; z-index: 1000; top: 2300.57px; right: 155.4px;">
			<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
				<div class="drop-down-panel" data-panel-title="정렬" data-panel-parents="">
					<ul class="property-filter-panel-entry-list wide">
					
					
						<li class="property-filter-panel-entry-list__item-wrap">
							<button class="property-filter-panel-entry-list__item selected" type="button">
								<div class="property-filter-panel-entry-list__item__header">
									<div class="property-filter-panel-entry-list__item__group">
										<div class="_2xClz input-type">
											<input type="radio" class="fs-4H" value="">
											<span class="_2ekY2"></span>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="../resources/js/category.js"></script>
	<c:import url="../template/footer.jsp"></c:import>
	<!--================================================================================================================================-->
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