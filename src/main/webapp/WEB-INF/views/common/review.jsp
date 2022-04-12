<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../resources/css/point.css"></c:import>

<c:forEach items="${review}" var="R" varStatus="i">
     <div class="pointdiv">아이디:${R.id}</div>
     <div class="pointdiv">
     <fieldset class="pointfieldset">
       
        <c:if test="${R.review_point eq 5}" >
        	<div class="point">
        	 만족도 ⭐⭐⭐⭐⭐
        	</div>
        </c:if>
        <c:if test="${R.review_point eq 4}">
        	<div class="point">
        	 만족도 ⭐⭐⭐⭐
        	</div>
        </c:if>
        <c:if test="${R.review_point eq 3}">
        	<div class="point">
        	 만족도 ⭐⭐⭐
        	</div>
        </c:if>
        <c:if test="${R.review_point eq 2}">
        	<div class="point">
        	 만족도 ⭐⭐
        	</div>
        </c:if>
        <c:if test="${R.review_point eq 1}">
        	<div class="point">
        	 만족도 ⭐
        	</div>
        </c:if>       
    </fieldset>
</div>
<div class="pointdiv" id ="up${R.review_number}">${R.contents}</div>
<div class="pointdiv">작성 날짜:${R.cd}</div>
<div class="pointdiv">수정 날짜:${R.md}</div>

<c:if test="${member.id eq R.id}">	
<button class="update" type="button" data-index="${R.review_number}">수 정</button>
<button class="del" type="button" data-num="${R.review_number}">삭 제</button>
</c:if>

</c:forEach>
