<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>
 	<h1>집들이 글 수정 페이지</h1>
 	
 		<form action="./update" method="post">
 		
	ID<input type="text" name="id" value="${member.id}">
	<input type="hidden" name="num" value="${dto.num}">
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
		<div>
			Title<input type="text" name="title" placeholder="제목을 입력해주세요.">
		</div>
		<div>
		 Contents<textarea name="contents" rows="" cols="" placeholder="내용을 입력해주세요."></textarea>
		</div>
			<button type="submit">SAVE</button>
	</form>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>