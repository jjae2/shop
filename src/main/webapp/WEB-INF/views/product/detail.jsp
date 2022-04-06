<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/point.css" rel="styleSheet" />
</head>
<body>
	<h1>상품 디테일 페이지</h1>

	<h2>상품번호::${detail.product_num}</h2>
	<h2>Id::${detail.id}</h2>
	<h2>상품이름::${detail.product_name}</h2>
	<hr>
	<hr>
	      <h1>리뷰 쓰기</h1>
  <p class="">-----상품 내용----</p>
<form name="myform" id="myform" action="./addReview" method="post">
     <fieldset>
        <legend>별점 평가</legend><!-- <div class="warning_msg">별점을 선택해 주세요.</div> -->
        만족도
        <input type="radio" name="detail.reviewDTO.review_point" value="5" id="rate1"><label for="rate1">⭐</label>
        <input type="radio" name="detail.reviewDTO.review_point" value="4" id="rate2"><label for="rate2">⭐</label>
        <input type="radio" name="detail.reviewDTO.review_point" value="3" id="rate3"><label for="rate3">⭐</label>
        <input type="radio" name="detail.reviewDTO.review_point" value="2" id="rate4"><label for="rate4">⭐</label>
        <input type="radio" name="detail.reviewDTO.review_point" value="1" id="rate5"><label for="rate5">⭐</label>
    </fieldset>
  	<div>
		<input type="hidden" name="product_num" value="${detail.product_num}" id="product_num">  
		<input type="hidden" readonly name="id" value="${member.id}" id="id">
		<textarea rows="" cols="30" name="contents" id="contents"></textarea>
		<button type="button" id="save">리뷰 등록</button>
	</div>
  </form>
	<hr>
	<hr>
	<table id="reviewResult">
	</table>
	<hr>
	<script src="../resources/js/review.js"></script>
</body>
</html>