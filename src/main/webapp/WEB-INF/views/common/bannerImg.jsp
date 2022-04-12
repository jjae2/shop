<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   


<div class="carousel__list__entry" role="group" aria-roledescription="slide" aria-label="${storeBanner} of 10" style="width: 100%;">

					
<c:choose>
	<c:when test="${storeBanner eq '1'}">	
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164965085941214425.png?gif=1&w=2560&q=100">
	</c:when>
	<c:when test="${storeBanner eq '2'}">
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164960335431281914.png?gif=1&w=2560&q=100">
	</c:when>
	<c:when test="${storeBanner eq '3'}">
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="./resources/images/164931436521865888.jpg">
	</c:when>
	<c:when test="${storeBanner eq '4'}">
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164939279831909709.png?gif=1&w=2560&q=100">		
	</c:when>
	<c:when test="${storeBanner eq '5'}">
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164931472067949633.png?gif=1&w=2560&q=100">		
	</c:when>
	<c:when test="${storeBanner eq '6'}">
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164931467574533523.png?gif=1&w=2560&q=100">		
	</c:when>
	<c:when test="${storeBanner eq '7'}">
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164931422783253292.png?gif=1&w=2560&q=100">		
	</c:when>
	<c:when test="${storeBanner eq '8'}">
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164931483245207530.png?gif=1&w=2560&q=100">		
	</c:when>
	<c:when test="${storeBanner eq '9'}">
			<a href="./notices/list">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164939287210682740.png?gif=1&w=2560&q=100">		
	</c:when>
	<c:when test="${storeBanner eq '10'}">
			<a href="./notices/list?category_num2">
			<div class="carousel-banner">
				<div class="carousel-banner__content container">
					<div class="featured-content__cover-image ">
		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/164931502938340290.png?gif=1&w=2560&q=100">		
	</c:when>

</c:choose>
					</div>
					<div class="featured-content__text-wrap featured-content__text-wrap--center"></div>
				</div>
			</div>
		</a>
	</div>