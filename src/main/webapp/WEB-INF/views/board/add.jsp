<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>
	<h1>${board} Add Page</h1>
	
	<form action="./add" method="post" enctype="multipart/form-data">
		Title<input type="text" name="title">
		ID<input type="text" name="id" <%-- value="${member.id}" readonly --%>>
		Contents<textarea name="contents" rows="" cols=""></textarea>
		
	<div id="fileResult"></div>
	
		<div>
			<button type="button" id="fileAdd">FileAdd</button>
			<button type="button" class="del">Sample DEL</button>
		</div>
		
		<button type="submit">ADD</button>
	
	</form>
	<script src="../resources/js/file.js"></script>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>