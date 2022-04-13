<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<c:import url="./template/header_css.jsp"></c:import>
<link href="./resources/css/home.css" rel="styleSheet" />
</head>
<body>
	<c:import url="./template/header.jsp"></c:import>
	<div id="store-index" style="margin-top: 10px;">
		<div class="carousel featured-carousel" role="region"
			aria-roledescription="carousel">
			<div class="carousel__list-wrap">
				<input type="hidden" value="1" id="storeBanner">
				
				<div class="carousel__list" aria-live="off" style="transform: translateX(0%);" id="bannerImg">
				
					<div class="carousel__list__entry" role="group" aria-roledescription="slide" aria-label="3 of 10" style="width: 100%;">
						<a href="./notices/list">
							<div class="carousel-banner">
								<div class="carousel-banner__content container"><!-- style="transition-duration: 500ms; transform: translateX(-959.37px);" -->
									<div class="featured-content__cover-image "><!-- 959.37 / 1918.74 --><!-- category-list -->
										<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164965085941214425.png?gif=1&w=2560&q=100">
									</div>
									<div class="featured-content__text-wrap featured-content__text-wrap--center"></div>
								</div>
							</div>
						</a>
					</div>
					
					
				</div>
				
				
				
			</div>




<%-- 			<!-- 사진밑에 작은 점 -->
			<div class="featured-carousel__indicators__wrap">
				<div class="featured-carousel__indicators__centering-container">
<!-- active -->

					<ul class="featured-carousel__indicators__list" id="bannerSmallBtn">
						
						<c:forEach var="i" begin="1" end="10">	
							<li class="featured-carousel__indicators__item<c:if test='${i=="1"}'> active</c:if>" id="smallBtn${i}">
								<button type="button"></button>
							</li>						
						</c:forEach>
					</ul>
				</div>
			</div> --%>




			<!-- 사진밑에 한글 배너  -->
			<div class="featured-quick-navigation container">
				<ul class="featured-quick-navigation__list" id="bannerBot_selector">
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="1">종료 임박!</span>
						</div></li>
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="2">멍냥 필수템</span>
						</div></li>
					<li
						class="featured-quick-navigation__item featured-quick-navigation__item--selected"
						role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="3">홈오피스 꾸미기</span>
						</div></li>
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="4">리바트 세일</span>
						</div></li>
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="5">필수가전 특가</span>
						</div></li>
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="6">생활용품 ~81%</span>
						</div></li>
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="7">LGX까사미아</span>
						</div></li>
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="8">4월 SALE</span>
						</div></li>
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="9">삼성 BESPOKE</span>
						</div></li>
					<li class="featured-quick-navigation__item" role="button"><div
							class="featured-quick-navigation__item__content">
							<span class="bannerBot" data-num="10">입점 특가</span>
						</div></li>
					<li
						class="featured-quick-navigation__item featured-quick-navigation__item__left bannerLeft"
						role="button"><svg class="bannerLeft" width="14" height="14"
							preserveAspectRatio="xMidYMid meet">
							<path class="bannerLeft" fill="currentColor"
								d="M6.338 7.01l4.95-4.95L10.05.823 3.863 7.01l6.187 6.187 1.238-1.238z"></path></svg></li>
					<li
						class="featured-quick-navigation__item featured-quick-navigation__item__right bannerRight"
						role="button"><svg class="bannerRight" width="14" height="14"
							preserveAspectRatio="xMidYMid meet">
							<path class="bannerRight" fill="currentColor"
								d="M8.662 7.01l-4.95-4.95L4.95.823l6.187 6.187-6.187 6.187-1.238-1.238z"></path></svg></li>
				</ul>
			</div>
		</div>






		<!-- 카테고리 -->
		<!-- 카테고리 -->
		<!-- 카테고리 -->





		<section
			class="container store-index-section store-index-category-list">
			<h1 class="store-index-category-list__title">카테고리</h1>


			<div class="category-list-wrap">
			<input type="hidden" id="category_fold_num" value="0">
				<div class="category-list fold" id="category_fold" style="transition-duration: 500ms; transform: translateX(0%);">

					<!-- 카테고리 여러개 -->
					
					<div class="category-list fold" style="transition-duration: 0ms; transform: translateX(0%)">
						<div class="category-item-wrap">
							<a href="./store/category?category_num=0"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/164333421927911367.png?gif=1&amp;w=144&amp;h=144&amp;c=c">							
										<div class="category-item__title">가구</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=1"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225115177697.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">패브릭</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=2"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225665741013.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">조명</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=3"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226017937426.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">가전</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=4"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226903946200.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">주방용품</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=5"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823227719846773.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">데코/식물</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=6"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823228178967968.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">수납/정리</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=7"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163609843911228804.png?gif=1&amp;w=144&amp;h=144&amp;c=c">										
										<div class="category-item__title">생활용품</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=8"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/164333398177552131.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">서랍/수납장</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=9"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163575474448469686.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">생필품</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=10"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230480918647.png?gif=1&amp;w=144&amp;h=144&amp;c=c">									<div class="category-item__title">공구/DIY</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=11"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230908544036.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">인테리어시공</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=12"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231401891024.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">반려동물</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=13"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823242317048198.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">캠핑용품</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=14"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231949249287.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">실내운동</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=15"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/164148743817769527.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
									<div class="category-item__title">렌탈</div>
								</div></a>
						</div>
						<div class="category-item-wrap">
							<a
								href="./store/category?category_num=16"><div
									class="category-item">
									<img class="category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164670497042634072.jpg?gif=1&w=850&h=850&c=c">
									<div class="category-item__title">식품</div>
								</div></a>
						</div>
					</div>



					<!-- 				<div class="category-item-wrap">
						<a href="/store/category?category=0&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=1">
							<div class="category-item">
								<img class="category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/164333421927911367.png?gif=1&amp;w=144&amp;h=144&amp;c=c">
								<div class="category-item__title">가구</div>
							</div>
						</a>
					</div> -->

					<!--  -->
				</div>


				<div class="category-list__prev" id="category_prev">
					<button type="button">
						<svg width="32" height="32" viewBox="0 0 32 32"
							preserveAspectRatio="xMidYMid meet">
							<g fill="none" fill-rule="evenodd">
							<rect width="32" height="32" fill="#000" fill-opacity=".26"
								rx="16"></rect>
							<path fill="#FFF" fill-rule="nonzero"
								d="M20 10.87l-1.5-1.54L12 16l6.5 6.67 1.5-1.54L15 16z"></path></g></svg>
					</button>
				</div>

				<div class="category-list__next" id="category_next">
					<button type="button">
						<svg width="32" height="32" viewBox="0 0 32 32"
							preserveAspectRatio="xMidYMid meet">
							<g fill="none" fill-rule="evenodd">
							<rect width="32" height="32" fill="#000" fill-opacity=".26"
								rx="16"></rect>
							<path fill="#FFF" fill-rule="nonzero"
								d="M12 21.13l1.5 1.54L20 16l-6.5-6.67-1.5 1.54L17 16z"></path></g></svg>
					</button>
				</div>

			</div>
		</section>





		<!-- 인기상품 -->
		<!-- 인기상품 -->
		<!-- 인기상품 -->


		<section class="container store-index-section store-index-product-list">
			<h1>인기 상품</h1>
			<div class="virtualized-list row" id="productResult" style="padding-top: 20px; padding-bottom: 100px; transform: translateY(0px);">
				<!-- 인기상품 -->
					

			</div>
		</section>
	</div>
	
	
	<script src="./resources/js/storeHome.js"></script>
	<c:import url="./template/footer.jsp"></c:import>

</body>
</html>