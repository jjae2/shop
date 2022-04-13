<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/housedetail.css" rel="styleSheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

 <main class="content-detail">
<div class="content-detail-content-section">
    <div class="content-detail-content-section__content">
        <header class="content-detail-header">
            <div class="content-detail-header__top">
                <p class="content-detail-header__category">온라인 집들이</p>
            </div><h1 class="content-detail-header__title">${dto.title}</h1>
            <div class="content-detail-header__bottom">
            <div class="content-detail-header__author-name">아이디:${dto.id}</div>
            </div></header><section class="project-detail-metadata">
                <dl class="project-detail-metadata-overview">
                    <div class="project-detail-metadata-overview-item">
                        <dt class="project-detail-metadata-overview-item__icon">
                </dl><div class="project-detail-foldable">
                    <div class="project-detail-foldable__content">
                        <dl class="project-detail-metadata-detail">
                            <div class="project-detail-metadata-detail-item">
                                <dt>평수</dt><dd>${house_space}</dd></div>
                            <div class="project-detail-metadata-detail-item">
                                <dt>주거형태</dt><dd>${house_type}</dd></div>
                            <div class="project-detail-metadata-detail-item">
                                <dt>인테리어 스타일</dt><dd>${house_style}</dd></div>
                        </dl></div>
                    </div> </section>
                        <div class="bpd-view project-detail__content-bpd">
                            <div class="project-detail-image-block only-image">
                                <div class="_33oVJ project-detail-image-block__overlay">
                                    <img class="project-detail-image-block__image" alt="" src="../resources/upload/house/${dto.houseFileDTO.fileName}" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/164925998813103898.png?gif=1&amp;w=1080 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/164925998813103898.png?gif=1&amp;w=1440 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/164925998813103898.png?gif=1&amp;w=2560 3x">
                                <p class="bpd-view-text bpd-view-p-block">${dto.contents}&nbsp;</p>
          </div>
          </div>
          </div>
          </div>
          </div>
          </main>
          <hr>
	<div>
	<h1>댓글 등록</h1>
		<input type="hidden" name="num" value="${dto.num}" id="num"> 
		<input type="text" readonly name="id" value="${member.id}" id="id">
		<textarea rows="" cols="30" name="contents" id="contents"></textarea>
		<button type="button" id="reply">등록</button>
	</div>

	<table id="replyResult">
	</table>
	<c:if test="${member.id eq dto.id}">
	<button class="w-btn w-btn-blue"><a href="./delete?num=${dto.num}">글 삭제</a></button>
	<button class="w-btn w-btn-blue"><a href="./update?num=${dto.num}">글 수정</a></button>
	</c:if>
	<button class="w-btn w-btn-blue"><a href="./list">List</a></button>

	<script src="../resources/js/houseReply.js"></script>

	
</body>
</html>