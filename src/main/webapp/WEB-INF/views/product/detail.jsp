<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#scrap{
color:#35c5f0;
}
#not_scrap{
color:#35c5f0;
}
</style>
<link href="../resources/css/point.css" rel="styleSheet" />
</head>
<body>
	<h1>상품 디테일 페이지</h1>

	<h2>상품번호::${detail.product_num}</h2>	
	<h2>상품이름::${detail.product_name}</h2>
	<input type="hidden" name="product_num" value="${detail.product_num}" id="product_nums">  
	<input type="hidden" name="id" value="${member.id}" id="ids">
	<input type="hidden" name="product_name" value="${detail.product_name}" id="product_name">

	
	<c:if test="${not empty member.id}}">
	<svg id="scrap" class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
	</c:if>
	<c:if test="${empty member.id}">
	<svg id="not_scrap" class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
	</c:if>
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
	<script src="../resources/js/scrap.js"></script>
	<script src="../resources/js/review.js"></script>
</body>
</html>