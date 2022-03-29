<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>집들이 디테일 페이지</h1>

<h2>Title::${dto.title}</h2>
<h2>Id::${dto.id}</h2>
<h2>Type::${dto.house_type}</h2>
<h2>Space::${dto.house_space}</h2>
<h2>Style::${dto.house_style}</h2>
<h2>Contents::${dto.contents}</h2>
<a href="./update?num=${dto.num}">Update</a>
<a href="./delete?num=${dto.num}">Delete</a>
<hr>
 <div>
		<input type="hidden" name="num" value="${dto.num}" id="num">
   		<input type="text" readonly name="id" <%-- value="${member.id}" --%> id="id">
   		<textarea rows="" cols="30" name="contents" id="contents"></textarea>
   		<button type="button" id ="reply">등록</button>
	</div>
  
	<table id="replyResult">
		
	</table>

	<a href="./list">List</a>
	
<script src="../resources/js/houseReply.js"></script>
</body>
</html>