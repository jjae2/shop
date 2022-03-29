<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Member Join Page</h1>
    <form class="frm" action="./join" method="post" id="frm">
        <fieldset>
            <legend>ID</legend>
            <input type="text" name="id" id="id">
            <div id="idResult"></div>
        </fieldset>
        <fieldset>
            <legend>PASSWORD</legend>
            <input type="password" id="pw" name="pw" placeholder="8글자 이상 12글자 이하로 작성">
            <div id="pwResult"></div>
        </fieldset>
                <fieldset>
            <legend>PASSWORD 확인</legend>
            <input type="password" id="pw2" name="pw2" placeholder="8글자 이상 12글자 이하로 작성">
			<div id="pw2Result"></div>
        </fieldset>
        <fieldset>
            <legend>NAME</legend>
            <input type="text" name="name" id="name">
        </fieldset>
        <fieldset>
            <legend>PHONE</legend>
            <input type="text" name="phone" id="phone">
        </fieldset>
        <fieldset>
            <legend>EMAIL</legend>
            <input type="text" name="email" id="email">
        </fieldset>
        <fieldset>
            <button type="button" id="btn">JOIN</button>
        </fieldset>

    </form>
    
    <script type="text/javascript" src="../resources/js/join.js"></script>
</body>
</html>