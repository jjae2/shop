<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>집들이 글 쓰기 페이지</h1>
	<form action="./add" method="post" enctype="multipart/form-data">
	ID<input type="text" name="id"<%--  value="${member.id}" --%>>
		<fieldset>

			<label>주거 형태<select id="house_type" name="house_type">
					<option value="">선택해주세요.</option>
					<option value="원룸">원룸</option>
					<option value="오피스텔">오피스텔</option>
					<option value="아파트">아파트</option>
			</select>
			</label> 평 수<input type="text" name="house_space"> 
			<label>인테리어 스타일<select id="house_style" name="house_style">
					<option value="">선택해주세요.</option>
					<option value="내추럴 인테리어">내추럴 인테리어</option>
					<option value="모던 인테리어">모던 인테리어</option>
					<option value="로맨틱 인테리어">로맨틱 인테리어</option>
			</select>
			</label>
		</fieldset>
		<fieldset>
			<input type="text" name="title" placeholder="제목을 입력해주세요.">	
		</fieldset>

		<fieldset>
		 <div id="fileResult"></div>
		 <textarea name="contents" rows="10" cols="30" placeholder="내용을 입력해주세요."></textarea>
		</fieldset>
	<div class="image-container">
    <img style="width: 500px;" id="preview-image" src="https://dummyimage.com/500x500/ffffff/000000.png&text=preview+image">
    <input style="display: block;" type="file" id="input-image">
	</div>
	    
		<button type="button" id="fileAdd">사진 추가</button>
	   

		<button type="submit">업로드</button>
	</form>

<script src="../resources/js/file.js"></script>
</body>
</html>