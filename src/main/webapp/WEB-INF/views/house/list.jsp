<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/house.css" rel="styleSheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<c:if test="${not empty member}">
	<button class="w-btn w-btn-blue"><a href="./add">집들이 글쓰기</a></button>
	</c:if>
	<div class="container">
    <div class="project-feed">
    <div class="project-feed__count">
        전체 ${count}
    </div>
    
    <div class="virtualized-list row" style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
        <c:forEach items="${pl}" var="pl">
        <div class="col-12 col-md-4">
            <article class="project-feed__item">
                <a class="project-feed__item__link" href="./detail?num=${pl.num}"></a>
                <div class="project-feed__item__image">
                    <img class="image" alt="" src="../resources/upload/house/${pl.houseFileDTO.fileName}">
        </div><h1 class="project-feed__item__title">${pl.title}</h1>
        <address class="project-feed__item__writer-wrap">
        <a class="project-feed__item__writer" href="./detail?num=${pl.num}">
        <span class="project-feed__item__writer__name">${pl.id}</span></a></address>
        <footer class="project-feed__item__status">
            <span class="entry">
                ${pl.house_type}
                &nbsp;
            </span>
            <span class="entry">
                ${pl.house_style}
                &nbsp;
            </span>
            <span class="entry">
                ${pl.house_space}평
            </span>
        </footer>
        <span class="project-feed__item__writer__name">조회수${pl.hit}</span></a></address>
    </article>
</div>
</c:forEach>
</div> 
</div>
</div>
	
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>