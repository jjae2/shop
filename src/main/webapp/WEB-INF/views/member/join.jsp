<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/join.css" rel="stylesheet">
</head>
<body>
<div class="page">
<section class="css-tbdbun e1y3odo25">
<div class="css-5bso4y e1y3odo23"><h1 class="css-1pmd5bp e1y3odo24">회원가입</h1></div>
<form action="./join" method="post" id="frm" enctype="multipart/form-data">
    <div class="css-1kfo0kb euhjq6q3">
        <label class="css-ef7ez6 euhjq6q2">아이디</label>
        <div class="css-1npk207 euhjq6q1">다른 유저와 겹치지 않는 아이디를 입력해주세요. (8자이상12자이하)</div>
        <input class="_3ASDR _1qwAY" field="[object Object]" id="id" name="id" placeholder="아이디 (8자~12자)" value=""></div>
        <div class="css-1thr4j euhjq6q0" id="idResult"></div>
        <div class="" style="overflow: hidden;"></div>
    <div class="css-1kfo0kb euhjq6q3">
        <label class="css-ef7ez6 euhjq6q2">비밀번호</label>
        <div class="css-1npk207 euhjq6q1">영문, 숫자를 포함한 8자 이상의 비밀번호를 입력해주세요.</div>
        <input class="_3ASDR _1qwAY" field="[object Object]" id="pw" name="pw" type="password" placeholder="비밀번호" value=""></div>
        <div class="css-1thr4j euhjq6q0" id="pwResult"></div>
        <div class="css-1kfo0kb euhjq6q3">
        <label class="css-ef7ez6 euhjq6q2">비밀번호 확인</label>
        <input class="_3ASDR _1qwAY" field="[object Object]" id="pw2" name="pw2" type="password" placeholder="비밀번호 확인" value=""></div>
        <div class="css-1thr4j euhjq6q0" id="pw2Result"></div>
        <div class="css-1kfo0kb euhjq6q3">
        <label class="css-ef7ez6 euhjq6q2">이름</label>
            <input class="_3ASDR _1qwAY" field="[object Object]" id="name" name="name" placeholder="" value=""></div>
        <div class="css-1kfo0kb euhjq6q3">
        <label class="css-ef7ez6 euhjq6q2">프로필</label>
        <input class="_3ASDR _1qwAY" field="[object Object]" type="file" id="photo" name="photo" value=""></div>
        <span class="email-input__domain">
            <label class="css-ef7ez6 euhjq6q2">성별</label>
            <select class="form-control" id="genderC" name="gender" id="gender" value="">
                <option value="">선 택</option>
                <option value="M">남 성</option>
                <option value="F">여 성</option>     
            </select>
         </span>
         <div class="css-1kfo0kb euhjq6q3">
                <label class="css-ef7ez6 euhjq6q2">나이</label>
                <input class="_3ASDR _1qwAY" field="[object Object]" id="age" name="age" value=""></div>
        <div class="css-1xdhyk6 euhjq6q3">
        <label class="css-ef7ez6 euhjq6q2">이메일</label>
    <div class="css-1eufcdp e159epbo1">
        <div class="input-group email-input">
            <span class="email-input__local">
                <input class="form-control" placeholder="이메일" id="email" name="email" size="1" value=""></span>
            </div>
        </div>
    </div>
        <div class="css-1kfo0kb euhjq6q3">
        <label class="css-ef7ez6 euhjq6q2">주소</label>
        <input class="_3ASDR _1qwAY" field="[object Object]" id="address" name="address" value=""></div>
        <div class="css-1kfo0kb euhjq6q3">
        <label class="css-ef7ez6 euhjq6q2">전화번호</label>
            <input class="_3ASDR _1qwAY" field="[object Object]" id="phone" name="phone" placeholder="010" value=""></div>
     
      
        <button class="_3Z6oR _3AsCW _2tsrJ css-1d3w5wq e1y3odo22" type="button" id="btn">회원가입하기</button>
        <input type="hidden" name="com_name" value="">
        <input type="hidden" name="com_address" value="">
        </form>
        
    <p class="css-frl1s e1y3odo21">이미 아이디가 있으신가요?<a href="./login" class="css-i9fa3q e1y3odo20">로그인</a></p></div></section>


	<script type="text/javascript" src="../resources/js/join.js"></script>
</body>
</html>