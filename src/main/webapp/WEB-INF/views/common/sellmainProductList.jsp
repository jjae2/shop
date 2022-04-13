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
					<td>상품번호</td><td>상품이름</td><td>판매자</td><td>상품가격</td><td>할인율</td><td>조회수</td><td>수정</td>
				</tr>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.product_num}</td>
						<td><a href="../product/detail?product_num=${dto.product_num}">${dto.product_name}</a></td>
						<td>${dto.id}</td>
						<td>${dto.product_price}</td>
						<td>${dto.rate}</td>
						<td>${dto.hit} </td>
						<td><a href="../product/update?product_num=${dto.product_num}" class="update" id="up${dto.product_num}" data-num="${dto.product_num}" style="line-height: 20px;">update</a><a href="../product/delete?product_num=${dto.product_num}" class="delete" id="del${dto.product_num}" data-num="${dto.product_num}" style="line-height: 20px;">Delete</a></td>
					</tr>				
				</c:forEach>	
			</table>
		<div class="productListPage">
			<c:if test="${pager.pre}">				
				<button class="productListPage1" value="${pager.startNum-1}">PREVIEW</button>
			</c:if>
		
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<button class="productListPage1" value="${i}" data-kind="${pager.kind}" data-search="${pager.search}">${i}</button>
			</c:forEach>
			
			<c:if test="${pager.next}">
				<button class="productListPage1" value="${pager.lastNum+1}">PREVIEW</button>
			</c:if>
		</div>	
		
		<c:if test="${member.auth_id == 1}">
			<a href="../product/add">ADD</a> 
		</c:if>
	</div>
    
    
    
