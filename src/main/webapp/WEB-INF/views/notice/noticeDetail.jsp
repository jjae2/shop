<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/noticeDetail.css" rel="styleSheet" />

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
<div class="detail_wrap container">
	<div class="detail_wrap_wrap">
	
	<c:if test="${dto.type==1}">
		<span type="weak" variant="primary1" class="e1lj374k1 css-1xjrqco2">세일</span>
	</c:if>	
	<c:if test="${dto.type==0}">
		<span type="weak" variant="primary1" class="e1lj374k1 css-1xjrqco">공지</span>
	</c:if>
	
	
	<table class="detail_top_table">
		<tr>
			<td>제목</td><td>${dto.title}</td>
		</tr>
		<tr>
			<td>작성자</td><td>${dto.id}</td>
		</tr>
		<tr>
			<td>조회수</td><td>${dto.hit}</td>
		</tr>
	</table>

<%-- 	<div>
		<c:forEach items="${dto.fileDTOs}" var="f">
			<a href="./fileDown?fileNum=${f.fileNum}">${f.oriName}</a>		
		</c:forEach>
	</div> --%>
	<div class="gap"></div>
	
		<ul class="product_selling_cover-image_list1" id="candiList">
							
		<c:forEach items="${dto.noticeFileDTOs}" var="f">
				<li class="product_selling_cover-image_list_item">
					<button
						class="product_selling_cover-image_list_btn product_selling_cover-image_list_btn_selected"
						type="button" aria-label="5개 중 1번째 항목">
						<img class="image"
							src="../resources/upload/notice/${f.fileName}"
							id="candi${f.fileNum}" data-num="${f.fileNum}">
					</button>
				</li>
		</c:forEach>
		</ul>

	<div class="notice_contents">
	<span class="">
	${dto.contents}
	
	</span>
	</div>



	
	<div class="detail_bot">
		<div class="detail_bot1">
			<c:if test="${member.id eq dto.id}">	
				<a class="detail_bot_btn" href="./delete?num=${dto.num}">Delete</a>
				<a class="detail_bot_btn" href="./update?num=${dto.num}">update</a>
			</c:if>
		</div>
		<div class="detail_bot2">
			<a class="detail_bot_btn" href="./list">List</a>	
		</div>
	</div>
	</div>
</div>
<c:import url="../template/footer.jsp"></c:import>
<!-- <script src="../resources/js/qnaReply.js"></script> -->




</body>
</html>