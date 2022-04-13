<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<section class="product_selling_section">
	<header class="product_selling_section_header">
		<h1 class="product_selling_section_title">
			문의
			<!-- -->
			<span class="count" id="count"><fmt:formatNumber value="${total}" pattern="#,###" /></span>
		</h1>
		<div class="product_selling_section_right">
			<button style="cursor: pointer;" id="qnaAdd"
				class="product_selling_section_right_button">문의하기</button>
		</div>
	</header>


	<div class="product_question_feed">
		<div class="product_question_feed_list">
			<c:if test="${list == null}">
				<div class="product_question_feed_list_empty">문의 내역이 없습니다.</div>
			</c:if>
			<c:forEach items="${list}" var="dto">

				<article class="product_question_feed_item" data-qna-id="${dto.num}">

					<header class="product_question_feed_item_header">
						구매 |
						<c:choose>
							<c:when test="${dto.qna_type eq '0'}">
		상품
	</c:when>
							<c:when test="${dto.qna_type eq '1'}">
		배송
	</c:when>
							<c:when test="${dto.qna_type eq '2'}">
		반품
	</c:when>
							<c:when test="${dto.qna_type eq '3'}">
		교환
	</c:when>
							<c:when test="${dto.qna_type eq '4'}">
		환불
	</c:when>
							<c:otherwise>
		기타
	</c:otherwise>
						</c:choose>
						|
						<c:choose>
							<c:when test="${dto.qna_reply == 1}">
								<span class="answered">답변완료</span>
							</c:when>
							<c:otherwise>
								<span class="unanswered">미답변</span>
							</c:otherwise>
						</c:choose>
					</header>
					<p class="product_question_feed_item_author">${dto.id}|
						${dto.cd}</p>
					<div class="product_question_feed_item_question">
						<span class="product_question_feed_item_badge">Q&nbsp;</span>
						<c:choose>
							<c:when test="${dto.qna_secret == 1 && dto.id != member.id}">
								<p class="product_question_feed_item_content">
									<svg class="product_question_feed_item_content_secret-icon"
										viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet">
												<path fill="#AFAFAF"
											d="M10 5.33h-.67V4a3.33 3.33 0 00-6.66 0v1.33H2c-.73 0-1.33.6-1.33 1.34v6.66c0 .74.6 1.34 1.33 1.34h8c.73 0 1.33-.6 1.33-1.34V6.67c0-.74-.6-1.34-1.33-1.34zm-4 6c-.73 0-1.33-.6-1.33-1.33S5.27 8.67 6 8.67s1.33.6 1.33 1.33-.6 1.33-1.33 1.33zm2.07-6H3.93V4a2.07 2.07 0 014.14 0v1.33z"></path></svg>
									비밀글입니다.
								</p>
							</c:when>
							<c:otherwise>
								<p class="product_question_feed_item_content">
									<span class="product_question_feed_item_content_option-name">상품명<br>
									</span>${dto.contents}
								</p>
							</c:otherwise>
						</c:choose>
					</div>
					<c:forEach items="${list1}" var="dto1">
						<c:if test="${dto1.qna_ref == dto.qna_ref}">
							<c:choose>
								<c:when test="${dto.qna_secret == 1 && dto.id != member.id}">

								</c:when>
								<c:otherwise>
									<div class="product_question_feed_item_answer">
										<span class="product_question_feed_item_badge">A&nbsp;</span>
										<p class="product_question_feed_item_answer_author">
											<span class="author">${dto1.id}</span>&nbsp;<span
												class="date">${dto1.cd}</span>
										</p>
										<p class=product_question_feed_item_content">${dto1.contents}</p>
									</div>
								</c:otherwise>
							</c:choose>
						</c:if>
					</c:forEach>
				</article>


			</c:forEach>








			<!-- 
			<article class="product_question_feed_item" data-qna-id="5961302">

			</article> -->
			<hr>
		</div>
		<!-- qna 페이지번호 -->
		<ul class="list-paginator production-question-feed__paginator">

			<c:if test="${pager.pre}">
				<li><button class="list-paginator__prev list-paginator-wrap"
						type="button" id="qnaListPage${pager.startNum-1}">
						<svg class="list-paginator-wrap"
							id="qnaListPagb${pager.startNum-1}" width="26" height="26"
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
						type="button" id="qnaListPage${i}">${i}</button></li>
			</c:forEach>


			<c:if test="${pager.next}">
				<li><button class="list-paginator__next list-paginator-wrap"
						type="button" id="qnaListPage${pager.lastNum+1}">
						<svg class="list-paginator-wrap"
							id="qnaListPaga${pager.lastNum+1}" width="26" height="26"
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
	</div>
</section>