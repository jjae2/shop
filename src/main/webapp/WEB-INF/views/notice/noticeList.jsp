<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/noticeList.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>


			
	<div class="layoutStart">
		<header class="css-1b7n61v evxc8q77">
			<div class="css-1ouw2vm evxc8q76">
				<h1 class="css-i0gyub evxc8q75">공지사항</h1>
				<p class="css-13l7v01 evxc8q74">오늘의집과 함께 집을 꾸며나가요 :D</p>
				<div class="css-17j0uda e1ea57mf2" id="id-281">
					<div class="css-zjik7 e1ea57mf1">
						<div id="id-281-combobox" role="combobox" aria-haspopup="listbox" aria-expanded="false" class="css-18pny36 e1ea57mf0">
							<div class="css-bjn8wh e7zgiho3">
	
											
							<form action="./list" method="get">
								<input type="text" autocomplete="off" size="1" id="id-281-input" aria-autocomplete="list" placeholder="궁금한 것을 검색해보세요." aria-label="궁금한 것을 검색해보세요." class="css-bnv4dr e7zgiho2" name="search" value="${pager.search}">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" preserveAspectRatio="xMidYMid meet" class="css-17tiyxu e7zgiho1">
									<path d="M22 22l-5-5"></path>
									<circle cx="11" cy="11" r="8"></circle>
								</svg>
								<button type="submit" class="searchSubmitBtn">검색</button>									
							</form>
									
									
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		
		
		<div class="css-17z2bnm evxc8q73">
		
		
		
		
			<div class="css-160s9zb ehxcasx6">
				<div class="css-lz5mig ehxcasx4">
					<div class="css-kwujij">
						<span class="_dropdown_24 css-yvmhua">▼</span>
						<a href="./list?category_num=1">ghhhh</a>
						<a href="./list?category_num=2">asdasd</a>
						<select class="css-a7dsai">
							<option value="0">모두보기</option>
							<option value="1"><a href="./list?category_num=1" style="cursor: pointer;">세일</a></option> 
							<option value="2"><a href="./list?category_num=2">공지</a></option>
						</select>
						
					</div>
				</div>

				<div class="css-lz5mig ehxcasx4">
					<c:if test="${not empty member}">
						<a class="ehxcasx0 css-5pi9f4" href="./add">공지작성</a>
					</c:if>	
				</div>
			</div>
			
			
			
			
			
			<div class="css-0 evxc8q72">
			
			
				<c:forEach items="${list}" var="dto">			
					<a class="css-1l14cjb e1lj374k2" href="./detail?num=${dto.num}">
						<input type="hidden" value="${dto.num}" id="notice_num">
						
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
				<div>
					<c:if test="${pager.pre}">
						<a href="./list?page=${pager.startNum-1}">PREVIEW</a>
					</c:if>
				
					<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						<a href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a>
					</c:forEach>
					
					<c:if test="${pager.next}">
						<a href="./list?page=${pager.lastNum+1}">NEXT</a>
					</c:if>
					
				</div>	
				
		
			
			
			
				
				
<!-- 				<a class="css-1l14cjb e1lj374k2" href="/questions/12549">
					<span type="weak" variant="primary1" class="e1lj374k1 css-1xjrqco">공지</span>					
					
					<span class="bbsTitle">
						<span class="css-1f00cg3 e1lj374k0">답변 이벤트 안내 및 활동 주의사항 📢</span>													
						
						<div class="css-5rv50j e1amn78m2">
							<div class="css-11mfvm5 e1amn78m1">22.04.11</div>
							<div class="css-11mfvm5 e1amn78m1">조회 9</div>
						</div>
					</span>
				</a>
				<hr class="css-1tg86jb">
				
				<a class="css-1l14cjb e1lj374k2" href="/questions/12549">
					<span type="weak" variant="primary1" class="e1lj374k1 css-1xjrqco">공지</span>					
					
					<span class="bbsTitle">
						<span class="css-1f00cg3 e1lj374k0">빠르고 정확한 인테리어 답변을 받는 방법은?</span>													
						
						<div class="css-5rv50j e1amn78m2">
							<div class="css-11mfvm5 e1amn78m1">22.04.11</div>
							<div class="css-11mfvm5 e1amn78m1">조회 9</div>
						</div>
					</span>
				</a>	
				<hr class="css-1tg86jb"> -->
				
				

				<hr class="e1amn78m14 css-nsatf2">
				
				

			</div>
			

		</div>
	</div>


<!-- 	<script src="../resources/js/productDetail.js"></script> -->
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>