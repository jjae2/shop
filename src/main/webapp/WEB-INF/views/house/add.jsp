<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<style type="text/css">
fieldset{
      border: 0; 
}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	<h1>집들이 글 쓰기 페이지</h1>
	<form action="./add" method="post" enctype="multipart/form-data">
	ID<input type="text" name="id" value="${member.id}">
		<fieldset>

			<label>주거 형태<select id="type" name="house_type">
					<option value="">선택해주세요.</option>
					<option value="원룸">원룸</option>
					<option value="오피스텔">오피스텔</option>
					<option value="아파트">아파트</option>
			</select>
			</label> 평 수<input type="text" name="house_space"> 
			<label>인테리어 스타일<select id="type" name="house_style">
					<option value="">선택해주세요.</option>
					<option value="내추럴 인테리어">내추럴 인테리어</option>
					<option value="모던 인테리어">모던 인테리어</option>
					<option value="로맨틱 인테리어">로맨틱 인테리어</option>
			</select>
			</label>
		</fieldset>
	
	<div>
	<h1>대표 사진</h1>
		<div id="fileResult">
		
		</div>
		
		<button type="button" id="fileAdd">FileAdd </button>
		<!--  <input type="file"  id="image" onchange="setThumbnail(event);"/> <div id="image_container"></div>  -->
	</div>
		<fieldset>
		 <fieldset>
		<input type="text" name="title" placeholder="제목을 입력해주세요.">	
		</fieldset>
		 <textarea name="contents" placeholder="내용을 입력해주세요."></textarea>
		</fieldset>

		<button type="submit">글 등록</button>
	</form>


<c:import url="../template/footer.jsp"></c:import>
 <script type="text/javascript">
/*  function setThumbnail(event) { 
	 let reader = new FileReader(); 
	   reader.onload = function(event) {
	   let img = document.createElement("img");
	  img.setAttribute("src", event.target.result);
	  document.querySelector("div#image_container").appendChild(img);
	 }; 
	 reader.readAsDataURL(event.target.files[0]); } */
 </script>
 <script type="text/javascript" src="../resources/js/file.js"></script>
</body>
</html>