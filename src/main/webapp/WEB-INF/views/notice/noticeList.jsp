<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/noticeList.css" rel="styleSheet" />
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>


			
	<div class="layoutStart">
		<header class="css-1b7n61v evxc8q77">
			<div class="css-1ouw2vm evxc8q76">
				<a class="css-i0gyub evxc8q75" href="./list" style="display: block;">공지사항</a>
				<p class="css-13l7v01 evxc8q74">오늘의집과 함께 집을 꾸며나가요 :D</p>
				<div class="css-17j0uda e1ea57mf2" id="id-281">
					<div class="css-zjik7 e1ea57mf1">
						<div id="id-281-combobox" role="combobox" aria-haspopup="listbox" aria-expanded="false" class="css-18pny36 e1ea57mf0">
							<div class="css-bjn8wh e7zgiho3">
	
											
 							<!-- <form action="./list" method="get"> -->
								<input type="text" autocomplete="off" size="1" id="searchInput" aria-autocomplete="list" placeholder="궁금한 것을 검색해보세요." aria-label="궁금한 것을 검색해보세요." class="css-bnv4dr e7zgiho2" name="search" value="">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" preserveAspectRatio="xMidYMid meet" class="css-17tiyxu e7zgiho1">
									<path d="M22 22l-5-5"></path>
									<circle cx="11" cy="11" r="8"></circle>	
								</svg>
								<button type="submit" class="searchSubmitBtn" id="submitBtn">검색</button>									
							<!-- </form> -->
									
									
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
						<select class="css-a7dsai" id="noticeType">
							<option value="0">모두보기</option>
							<option value="1" <c:if test="${pager.category_num==1}"> selected</c:if>><a href="./list?category_num=2">공지</a></option>
							<option value="2" <c:if test="${pager.category_num==2}"> selected</c:if>><a href="./list?category_num=1" style="cursor: pointer;">세일</a></option> 
							
						</select>
						<input type="hidden" value="${pager.category_num}" id="category_num">
						<input type="hidden" value="" id="search">
						
					</div>
				</div>

				<div class="css-lz5mig ehxcasx4">
					<c:if test="${member.auth_id eq 2}">
						<a class="ehxcasx0 css-5pi9f4" href="./add">공지작성</a>
					</c:if>	
				</div>
			</div>
			
			
			
			
			
			<div class="css-0 evxc8q72">
				<div id="noticeListResult">
				
				</div>
			</div>
			
			
				
				

				
				

				
				
				

			
			

		</div>
	</div>

	<input type="hidden" value="${pager.page}" id="noticeListPage">
	<script src="../resources/js/noticeList.js"></script>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>