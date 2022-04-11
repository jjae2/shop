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

<!--  	insert into qnas (NUM, PRODUCT_NUM, ID, TITLE, CONTENTS, QNA_TYPE, QNA_BUY, CD, QNA_REPLY, QNA_SECRET, QNA_REF, QNA_STEP, QNA_DEPTH )
 		values (QNAS_seq.nextval, 222, #{id}, #{title}, #{contents}, 2, 0, SYSDATE, 0, 0, #{qna_ref}, #{qna_step}, #{qna_depth}) -->


	<c:import url="../template/header.jsp"></c:import>
	<h1>${board} Add Page</h1>
	
	<form action="./add" method="post" enctype="multipart/form-data">
		<input type="text" name="product_name" value="${dto.product_name}">
		Writer<input type="text" name="id" value="${member.id}" readonly><!--  -->
		Contents<textarea name="contents" rows="" cols=""></textarea>
		<input type="hidden" name="product_num" value="${dto.product_num}">
		<div id="fileResult">
			
		</div>
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