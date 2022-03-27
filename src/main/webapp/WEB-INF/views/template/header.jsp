<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<header class="header">
	
	<div class="navigation_wrap">
		<div class="navigation_top">
			<div class="navigation_top_content">
				<div class="navigation_top_content_left">
					<a class="navigation_top_content_left_logo" aria-label="오늘의집" href="/s1">
						<svg class="icon" width="74" height="30" viewBox="0 0 74 30" preserveAspectRatio="xMidYMid meet">
							<g fill="none" fill-rule="evenodd">
								<path fill="#000" d="M14.2 25.17H9.28V20.7a1.45 1.45 0 0 0-2.9 0v4.47H1.44a1.45 1.45 0 1 0 0 2.9H14.2a1.45 1.45 0 0 0 0-2.9M4.5 9.15c0-4.6 2.08-5.28 3.33-5.28 1.24 0 3.33.69 3.33 5.28v.36c0 4.6-2.09 5.28-3.33 5.28-1.25 0-3.34-.69-3.34-5.28v-.36zm3.33 8.54c3.84 0 6.23-3.13 6.23-8.18v-.36c0-5.05-2.39-8.18-6.23-8.18-3.85 0-6.24 3.13-6.24 8.18v.36c0 5.05 2.39 8.19 6.24 8.19zm25.54-7.34H17.81a1.45 1.45 0 0 0 0 2.9h15.56a1.45 1.45 0 1 0 0-2.9m-1.55 15.5c-7.08 1.83-9.45.79-10.14.25-.45-.35-.65-.8-.65-1.48v-.87h10.25c.8 0 1.46-.65 1.46-1.45v-5.08c0-.8-.66-1.45-1.46-1.45h-11.7a1.45 1.45 0 1 0 0 2.9h10.25v2.18H19.57c-.8 0-1.45.65-1.45 1.45v2.32a4.6 4.6 0 0 0 1.78 3.78c1.2.93 2.94 1.39 5.21 1.39 2.05 0 4.54-.38 7.44-1.13a1.45 1.45 0 1 0-.73-2.82M20.3 7.83h10.8a1.45 1.45 0 1 0 0-2.9h-9.35V1.45a1.45 1.45 0 1 0-2.9 0v4.93c0 .8.65 1.45 1.45 1.45"></path>
								<rect width="3" height="15" x="70" fill="#000" rx="1.5"></rect>
								<path fill="#000" d="M64.5 13.28a1.45 1.45 0 0 0 2.73-1c-.05-.13-1-2.68-3.38-4.5l3.7-4.1a1.45 1.45 0 0 0-1.09-2.42h-9.05a1.45 1.45 0 1 0 0 2.9h5.8l-6.88 7.64a1.45 1.45 0 1 0 2.16 1.95l3.41-3.8a8 8 0 0 1 2.6 3.33M69.56 26.52h-7.01a.82.82 0 0 1-.82-.82v-1.95h8.65v1.95c0 .45-.37.82-.82.82m2.27-9.37c-.8 0-1.45.65-1.45 1.45v2.25h-8.65V18.6a1.45 1.45 0 1 0-2.9 0v7.1a3.73 3.73 0 0 0 3.72 3.72h7.01a3.73 3.73 0 0 0 3.72-3.72v-7.1c0-.8-.65-1.45-1.45-1.45M42.46 3.87c2.22 0 2.33 4.24 2.33 5.08 0 .85-.11 5.09-2.33 5.09-2.21 0-2.32-4.24-2.32-5.08 0-.86.11-5.09 2.32-5.09m0 13.07c1.76 0 3.23-.93 4.14-2.62.71-1.34 1.1-3.2 1.1-5.36s-.39-4.02-1.1-5.37A4.6 4.6 0 0 0 42.46.97c-1.76 0-3.22.93-4.13 2.62-.72 1.35-1.1 3.2-1.1 5.37s.38 4.01 1.1 5.36a4.59 4.59 0 0 0 4.13 2.62"></path>
								<path fill="#000" d="M51.4.49c-.8 0-1.45.65-1.45 1.45v17.78c-1.93.6-5.75 1.13-10.38 1.13h-2.2a1.45 1.45 0 0 0 0 2.9h2.2c2.64 0 7.21-.23 10.38-1.02v4.84a1.45 1.45 0 0 0 2.9 0V1.94c0-.8-.65-1.45-1.45-1.45"></path>
							</g>
						</svg>
					</a>
				</div>
				<nav class="navigation_top_content_menu" id="navigation_top_content_menu_color">
					<a class="navigation_top_content_menu_store" id="store" href="/s1">스토어</a>
					<a class="navigation_top_content_menu_community" id="community" href="/s1/community/">커뮤니티</a>
					<a class="navigation_top_content_menu_blank" href="/s1/notices/list">공지사항</a>
				</nav>
				<div class="navigation_top_content_right">
					<div class="navigation_top_content_right_bar-search">
						<div class="navigation_top_content_right_search" id="id-1">
							<div class="navigation_top_content_right_search_header">
								<div id="id-1-combobox" class="navigation_top_content_right_search_combobox" role="combobox" aria-haspopup="listbox" aria-expanded="false">
									<div class="navigation_top_content_right_search_input">
										<input type="text" class="navigation_top_content_right_search_input_text" value="" autocomplete="off" size="1" id="id-1-input" aria-autocomplete="list" placeholder="오늘의집 통합검색" aria-label="오늘의집 통합검색">
										<svg class="navigation_top_content_right_search_input_icon" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" preserveAspectRatio="xMidYMid meet">
											<path d="M22 22l-5-5"></path>
											<circle cx="11" cy="11" r="8">
											</circle>
										</svg>
									</div>
								</div>
							</div>
						</div>
					</div>
<!--  -->

					<c:choose>
						<c:when test="${not empty member}">
							<a class="navigation_top_content_right_icon" title="스크랩북" aria-label="스크랩북" href="#">
								<svg class="icon" width="24" height="24" stroke="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path fill="none" stroke-width="2" d="M3 20.967zm0 0V2.5a.5.5 0 01.5-.5h17a.5.5 0 01.5.5v18.467l-8.057-4.309a2 2 0 00-1.886 0L3 20.968z"></path>
								</svg>
							</a>
							<a class="navigation_top_content_right_icon" title="장바구니" aria-label="장바구니" href="#">
								<svg class="icon" width="24" height="24" viewBox="0 0 24 24" stroke="currentColor" fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet">
									<path stroke-linecap="round" d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path>
									<path d="M1 2h3v3"></path>
								</svg>
								<span class="navigation_top_content_right_icon_ticker">5</span>
							</a>
							<div class="drop-down navigation_top_content_right_icon_user">
								<button class="navigation_top_content_right_icon_user-button" type="button" aria-label="qomputer" id="user_icon">
									<div class="navigation_top_content_right_icon_user-button_image">
										<img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
									</div>
									<svg class="navigation_top_content_right_icon_user-button_caret" width="8" height="8" viewBox="0 0 8 8" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M0 2l4 4 4-4z"></path>
									</svg>
								</button>
							</div>
						</c:when>
						<c:otherwise> 
							<div class="navigation_top_content_right_login">
								<a class="navigation_top_content_right_login_item no">　　　　</a>
								<a class="navigation_top_content_right_login_item no" href="/s1/member/login">로그인</a>
								<a class="navigation_top_content_right_login_item" href="/s1/member/joinCheck">회원가입</a>
								
							</div>				
						</c:otherwise>
					</c:choose>
				

<!--  -->
				</div>
			</div>

		</div>
		
		<div class="navigation_bot" style="">
			<div class="navigation_bot_content" style="position: relative;">
				<nav class="navigation_bot_content_menu" id="navigation_bot_content_menu">
					
					<c:choose>
						<c:when test="${community eq 'community'}">
							<a class="navigation_bot_content_menu_item navigation_bot_content_menu_item_active" id="navigation_bot_content_menu_item6" href="/s1/community">홈</a>
						    <a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item7" href="#">집들이</a>
						    <a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item8" href="#">질문과답변</a>
						    <a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item9" href="/s1/notices/list">공지사항</a>
						</c:when>
						<c:otherwise>
							<a class="navigation_bot_content_menu_item navigation_bot_content_menu_item_active" id="navigation_bot_content_menu_item1" href="/s1">스토어홈</a>
							<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item2" href="#">카테고리</a>		<!-- ?category=0&amp;order=popular -->
							<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item3" href="#">베스트</a>
							<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item4" href="#">오늘의딜</a>				<!-- ?special_feed=true -->
							<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item5" href="/s1/notices/list">세일공지</a>
						</c:otherwise>
					</c:choose>			
				</nav>
			</div>
		</div>
	</div>
</header>

	


<div class="navigation_top_content_right_icon_user_menu-wrap" data-popout="true" style="position: absolute; z-index: 1000; top: 40px; right: 60px;">
	<div class="navigation_top_content_right_icon_user_menu-wrap2" id="user_icon_menu">

    </div>
</div>
<div class="navigation_top_content_right_icon_user_menu-wrap" data-popout="true" style="position: absolute; z-index: 999; top: 32px; right: 50px;" id="user_icon_menu_base">

</div>

<script type="text/javascript" src="/s1/resources/js/home.js"></script>