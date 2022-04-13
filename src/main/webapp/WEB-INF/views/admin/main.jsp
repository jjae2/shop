<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/menu.css" rel="styleSheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

<nav class="shopnav">
<h1>관리자 메뉴</h1>
<ul class="shopmenu">
  <li><a href="../notices/list">공지사항 관리</a></li>
  <li><a href="./list">회원 관리</a></li>
</ul>
</nav>
<div class="contents">
        <h1>관리자 입니다.</h1></div>


</body>
</html>