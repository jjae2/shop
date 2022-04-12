<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/pw.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
    <div class="update-password__wrap">
        <h1 class="update-password__title">비밀번호 변경</h1>
    <form action="./updatePw" method="post">
        <input type="hidden" id="id" name="id" value="${member.id}">
        <input type="hidden" id="pwC" name="pwC" value="${member.pw}">
        <div class="update-password__section">
            <div class="update-password__section__title">기존 비밀번호</div>
            <div class="update-password__section__sub-title" id="pw1Result"></div>
        <div class="expert-form-group">
            <div class="expert-form-group__content">
                <div class="expert-form-group__input">
                    <input type="password" id="pw1" name="pw1" class="form-control" value="">
                </div>
            </div>
        </div>
    </div>
    <div class="update-password__section">
        <div class="update-password__section__title">새 비밀번호 </div>
        <div class="update-password__section__sub-title" id="pw2Result"></div>
        <div class="expert-form-group">
            <div class="expert-form-group__content">
                <div class="expert-form-group__input">
                    <input type="password" class="form-control" id="pw2" name="pw2" placeholder="8글자 이상 12글자이하" value="">
                </div>
            </div>
        </div>
    </div>
    <div class="update-password__section">
        <div class="update-password__section__title">새 비밀번호 확인</div>
        <div class="update-password__section__sub-title" id="pwResult"></div>
        <div class="expert-form-group">
            <div class="expert-form-group__content">
                <div class="expert-form-group__input">
                    <input type="password" class="form-control" id="pw" name="pw" placeholder="8글자 이상 12글자이하" value="">
                </div>
            </div>
        </div>
    </div>
    <button class="button button--color-blue button--size-50 button--shape-4 update-password__submit" type="submit">비밀번호 변경</button></form></div>
	<script type="text/javascript" src="../resources/js/pw.js"></script>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>