<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/mypage.css" rel="styleSheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	
	       <section class="css-tbdbun e1y3odo25"><h1 class="css-1pmd5bp e1y3odo24">마이페이지</h1></section>
        <div class="css-5bso4y e1y3odo23">
            <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">프로필</label>
                <img width=150px height=150px alt="" src="../resources/upload/member/${member.memberFileDTO.fileName}">
            <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">아이디</label>
                 <h2 class="css-1pmd5bp e1y3odo24">${member.id}</h2></div>
            <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">이름</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.name}</h2></div>
                  <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">성별</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.gender}</h2></div>
                  <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">나이</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.age}</h2></div>
                  <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">이메일</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.email}</h2></div>
                     <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">주소</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.address}</h2></div>    
                  <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">번호</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.phone}</h2></div>
                 <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">가입일</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.enrolldate}</h2></div>
                 <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">회사이름</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.com_name}</h2></div>
                 <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">회사주소</label>
                <h2 class="css-1pmd5bp e1y3odo24">${member.com_address}</h2></div>

	<button class="_3Z6oR _3AsCW _2tsrJ css-1d3w5wq e1y3odo22"><a href="../scrap/listScrap?id=${member.id}">스크랩 북</a></button>
	<button class="_3Z6oR _3AsCW _2tsrJ css-1d3w5wq e1y3odo22"><a href="./update?id=${member.id}">회원정보 수정</a></button>
	<button class="_3Z6oR _3AsCW _2tsrJ css-1d3w5wq e1y3odo22"><a href="./updatePw?id=${member.id}">비밀번호 수정</a></button>
	<button class="_3Z6oR _3AsCW _2tsrJ css-1d3w5wq e1y3odo22"><a href="./delete?id=${member.id}">회원 탈퇴</a></button>
	</div>
	
</body>
</html>