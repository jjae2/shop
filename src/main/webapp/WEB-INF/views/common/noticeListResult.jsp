<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    			<c:forEach items="${list}" var="dto">			
					<a class="css-1l14cjb e1lj374k2" href="./detail?num=${dto.num}">
						<input type="hidden" value="${dto.num}" id="notice_num${dto.num}">
						
						<c:if test="${dto.type eq 0}"><span type="weak" variant="primary1" class="e1lj374k1 css-1xjrqco">공지</span></c:if>
						<c:if test="${dto.type eq 1}"><span type="weak" variant="primary1" class="e1lj374k1 css-1xjrqco2">세일</span></c:if>
										
						
						<span class="bbsTitle">
							<span class="css-1f00cg3 e1lj374k0">${dto.title}</span>									
							
							<div class="css-5rv50j e1amn78m2">
								<div class="css-11mfvm5 e1amn78m1">${dto.cd}</div>
								<div class="css-11mfvm5 e1amn78m1">조회 ${dto.hit}</div>
							</div>
						</span>
					</a>
					<hr class="css-1tg86jb">
				</c:forEach>

		<ul class="list-paginator production-question-feed__paginator">
			<c:if test="${pager.pre}">
				<li><button class="list-paginator__prev list-paginator-wrap"
						type="button" id="NoticeListPage${pager.startNum-1}">
						<svg class="list-paginator-wrap"
							id="NoticeListPagb${pager.startNum-1}" width="26" height="26"
							viewBox="0 0 26 26" preserveAspectRatio="xMidYMid meet">
						<g fill="none" fill-rule="evenodd">
						<rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC" rx="4"></rect>
						<g stroke="#424242" stroke-linecap="square" stroke-width="2">
						<path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path></g></g></svg>
					</button></li>
			</c:if>
			<!-- selected -->
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<li><button class="list-paginator__page sm list-paginator-wrap"
						type="button" id="noticeListPage${i}">${i}</button></li>
			</c:forEach>


			<c:if test="${pager.next}">
				<li><button class="list-paginator__next list-paginator-wrap"
						type="button" id="NoticeListPage${pager.lastNum+1}">
						<svg class="list-paginator-wrap"
							id="NoticeListPaga${pager.lastNum+1}" width="26" height="26"
							viewBox="0 0 26 26" preserveAspectRatio="xMidYMid meet">
							<g fill="none" fill-rule="evenodd"
								transform="matrix(-1 0 0 1 26 0)">
								<rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC"
								rx="4"></rect>
								<g stroke="#424242" stroke-linecap="square" stroke-width="2">
								<path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path>
								</g>
							</g>
						</svg>
					</button></li>
			</c:if>
		</ul>
				
		<hr class="e1amn78m14 css-nsatf2">