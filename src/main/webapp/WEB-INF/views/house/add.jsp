o<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/houseadd.css" rel="stylesheet">

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	    <div class="page">
        <section class="css-tbdbun e1y3odo25">
        <div class="css-5bso4y e1y3odo23"><h1 class="css-1pmd5bp e1y3odo24">집들이 글 쓰기</h1></div>
        <form action="./add" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${member.id}">
            <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">커버 사진 등록</label>
                <input class="_3ASDR _1qwAY" field="[object Object]" type="file" id="photo" name="photo" value=""></div>
                <div class="css-1kfo0kb euhjq6q3">
                    <label class="css-ef7ez6 euhjq6q2">평 수</label>
                        <input class="_3ASDR _1qwAY" field="[object Object]" id="house_space" name="house_space" placeholder="" value=""></div>
                <span class="email-input__domain">
                    <label class="css-ef7ez6 euhjq6q2">인테리어 스타일</label>
                    <select class="form-control" id="house_space" name="house_style" id="house_style" value="">
                        <option value="">선 택</option>
                        <option value="내추럴 인테리어">내추럴 인테리어</option>
                        <option value="모던 인테리어">모던 인테리어</option>
                        <option value="로맨틱 인테리어">로맨틱 인테리어</option> 
                        <option value="러블리 인테리어">러블리 인테리어</option> 
                        <option value="클래식 인테리어">클래식 인테리어</option>     
                    </select>
                 </span>
                 <span class="email-input__domain">
                    <label class="css-ef7ez6 euhjq6q2">주거 형태</label>
                    <select class="form-control" id="house_type" name="house_type" id="house_type" value="">
                        <option value="">선 택</option>
                        <option value="단독주택">단독주택</option>
                        <option value="오피스텔">오피스텔</option>
                        <option value="원룸">원룸</option> 
                        <option value="아파트">아파트</option> 
                        <option value="호텔">호텔</option>     
                    </select>
                 </span>
                 <div class="editor-title-input">
                    <input class="editor-title-input__text" name="title" type="text" placeholder="제목을 입력해주세요." maxlength="30" value="">
                </div>
                <div class="editor-title-input">
                    <input class="editor-title-input__contents" name="contents" type="text" placeholder="내용을 입력해주세요." maxlength="400" value="">
                </div>
          	

              
                <button class="_3Z6oR _3AsCW _2tsrJ css-1d3w5wq e1y3odo22" type="submit" >글 저장</button>
                
            </div>
            </form>




</body>
</html>