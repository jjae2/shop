<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<input type="hidden" value="${member.id}" id="id1">
	<div class="table-container container">
		<!-- 검색 창-->
		<div class="search-form">					
					<select name="kind">
						<option value="col1">제목</option>
					</select>
					<input type="text" name="search" value="${pager.search}">
					<button class="productListSearchSubmit">검색</button>			
		</div>
		
		
		
			<table class="table-basic" id="table-basic">
				<tr>
					<td>상품문의번호</td><td>상품번호</td><td>상품문의내용</td><td>작성자</td><td>문의유형</td><td>작성일</td><td>답변</td>
				</tr>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.num}</td>
						<td>${dto.product_num}</td>
						<td><a href="../qnas/detail?num=${dto.num}">${dto.contents}</a></td>
						<td>${dto.id}</td>
						<td>${dto.qna_type}</td>
						<td>${dto.cd} </td>
						<td><a href="../qnas/sellAdd?num=${dto.num}&id${member.id}&product_num=${dto.product_num}" class="update" id="SA${dto.num}" data-num="${dto.num}" style="line-height: 20px;">reply</a></td>
					</tr>				
				</c:forEach>	
			</table>
		<div class="qnaListPage">
			<c:if test="${pager.pre}">				
				<button class="qnaListPage1" value="${pager.startNum-1}">PREVIEW</button>
			</c:if>
		
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<button class="qnaListPage1" value="${i}" data-kind="${pager.kind}" data-search="${pager.search}">${i}</button>
			</c:forEach>
			
			<c:if test="${pager.next}">
				<button class="qnaListPage1" value="${pager.lastNum+1}">PREVIEW</button>
			</c:if>
		</div>	
		
		<c:if test="${member.auth_id == 1}">
			<a href="../qnas/add">ADD</a> 
		</c:if>
	</div>
    
    
    
