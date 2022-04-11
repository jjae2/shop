<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <c:choose>
	<c:when test="${community eq 'community'}">

	</c:when>
	<c:otherwise>

	</c:otherwise>
</c:choose>
<c:forEach items="${list1}" var="dto1">
<h1>${dto1.contents}</h1>
<h1>${dto1.qna_step}</h1>
</c:forEach> --%>


<c:if test="${!(passingNum.filterStartPrice == 0 && passingNum.filterLastPrice == 100000000)||passingNum.brand ne '-1'||passingNum.sale==1}">




<div class="category-filter-bar-tag-list">
	<div class="category-filter-bar-tag-list__list-container">
		<ul class="category-filter-bar-tag-list__list">
		
		

<c:if test="${passingNum.sale==1}">
			<li class="category-filter-bar-tag-list__item"><button
					class="category-filter-bar-tag" type="button">
					세일
					<svg class="icon icon1" width="12" height="12"
						preserveAspectRatio="xMidYMid meet">
						<g fill="none" fill-rule="evenodd" opacity=".5">
						<path d="M0 0h12v12H0z"></path>
						<path fill="currentColor" fill-rule="nonzero"
							d="M9.778 1.5l.722.75-3.778 3.722L6.75 6l-.028.028L10.5 9.75l-.722.75L6 6.745 2.222 10.5 1.5 9.75l3.777-3.723L5.25 6l.027-.027L1.5 2.25l.722-.75L6 5.255 9.778 1.5z"></path></g></svg>
				</button></li>
</c:if>	





<c:if test="${passingNum.brand ne '-1'}">
			<li class="category-filter-bar-tag-list__item"><button
					class="category-filter-bar-tag" type="button">
					${passingNum.brand}
					<svg class="icon icon2" width="12" height="12"
						preserveAspectRatio="xMidYMid meet">
						<g fill="none" fill-rule="evenodd" opacity=".5">
						<path d="M0 0h12v12H0z"></path>
						<path fill="currentColor" fill-rule="nonzero"
							d="M9.778 1.5l.722.75-3.778 3.722L6.75 6l-.028.028L10.5 9.75l-.722.75L6 6.745 2.222 10.5 1.5 9.75l3.777-3.723L5.25 6l.027-.027L1.5 2.25l.722-.75L6 5.255 9.778 1.5z"></path></g></svg>
				</button></li>		
</c:if>




				
<c:if test="${!(passingNum.filterStartPrice == 0 && passingNum.filterLastPrice == 100000000)}">

			<li class="category-filter-bar-tag-list__item"><button
					class="category-filter-bar-tag" type="button">
					${passingNum.filterStartPrice} - ${passingNum.filterLastPrice} 원
					<svg class="icon icon3" width="12" height="12"
						preserveAspectRatio="xMidYMid meet">
						<g fill="none" fill-rule="evenodd" opacity=".5">
						<path d="M0 0h12v12H0z"></path>
						<path fill="currentColor" fill-rule="nonzero"
							d="M9.778 1.5l.722.75-3.778 3.722L6.75 6l-.028.028L10.5 9.75l-.722.75L6 6.745 2.222 10.5 1.5 9.75l3.777-3.723L5.25 6l.027-.027L1.5 2.25l.722-.75L6 5.255 9.778 1.5z"></path></g></svg>
				</button></li>
</c:if>				

				
				
				
				
				
				
		</ul>
	</div>
	<button class="category-filter-bar-tag-list__clear"
		type="button">
		<svg class="icon icon4" width="1em" height="1em"
			viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet">
			<g fill="none" fill-rule="evenodd">
			<path d="M0 0h20v20H0z"></path>
			<path fill="currentColor" fill-rule="nonzero"
				d="M8.958.833c3.844 0 7.157 2.488 8.417 6.019l.887-1.538a.834.834 0 011.444.833L17.67 9.671a.833.833 0 01-1.138.305l-3.524-2.035a.833.833 0 11.833-1.443l2.054 1.186C14.943 4.654 12.174 2.5 8.958 2.5c-4.022 0-7.291 3.353-7.291 7.5s3.269 7.5 7.291 7.5c2.47 0 4.73-1.272 6.075-3.35a.833.833 0 011.399.905c-1.647 2.546-4.43 4.112-7.474 4.112C4.006 19.167 0 15.058 0 10S4.006.833 8.958.833z"></path></g></svg>
		<span class="text text4">초기화</span>
	</button>
</c:if>	
	

</div>
