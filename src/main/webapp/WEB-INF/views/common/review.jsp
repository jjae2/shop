<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../resources/css/point.css"></c:import>

<c:forEach items="${review}" var="R" varStatus="i">
     <div>${R.id}</div>
     <div>
     <fieldset>
        <legend>만족도</legend>
        <c:if test="${R.review_point eq 5}" >
        	<div class="point">
        	⭐⭐⭐⭐⭐
        	</div>
        </c:if>
        <c:if test="${R.review_point eq 4}">
        	<div class="point">
        	⭐⭐⭐⭐
        	</div>
        </c:if>
        <c:if test="${R.review_point eq 3}">
        	<div class="point">
        	⭐⭐⭐
        	</div>
        </c:if>
        <c:if test="${R.review_point eq 2}">
        	<div class="point">
        	⭐⭐
        	</div>
        </c:if>
        <c:if test="${R.review_point eq 1}">
        	<div class="point">
        	⭐
        	</div>
        </c:if>       
    </fieldset>
</div>

<div id ="up${R.review_number}">${R.contents}</div>
<hr>



<%-- <c:if test="${member.id eq dto.id}">
			
			<td><button class="update" type="button" data-index="${dto.replyNum}">Update</button></td>
			<td><button class="del" type="button" data-num="${dto.replyNum}">Delete</button></td>
</c:if> --%>

</c:forEach>
