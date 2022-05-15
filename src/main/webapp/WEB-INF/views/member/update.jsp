<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/mypage.css" rel="styleSheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<form action="./update" method="post" id="frm" enctype="multipart/form-data">
		<c:if test="${member.auth_id eq 0}">
			<input type="hidden" id="id" name="id" value="${member.id}">
			<input type="hidden" id="pw" name="pw" value="${member.pw}">
			<section class="css-tbdbun e1y3odo25">
				<h1 class="css-1pmd5bp e1y3odo24">회원정보수정</h1>
			</section>
			<div class="css-1kfo0kb euhjq6q3">
				<label class="css-ef7ez6 euhjq6q2">프로필</label> <input
					class="_3ASDR _1qwAY" type="file" id="photo" name="photo" value="">
			</div>
			<div class="css-1kfo0kb euhjq6q3">
				<label class="css-ef7ez6 euhjq6q2">이름</label> <input
					class="_3ASDR _1qwAY" id="name" name="name"
					placeholder="" value="${member.name }">
			</div>
			<span class="email-input__domain"> <label
				class="css-ef7ez6 euhjq6q2">성별</label> <select class="form-control"
				id="genderC" name="gender" id="gender" value="">
					<option value="">선 택</option>
					<option value="M">남 성</option>
					<option value="F">여 성</option>
			</select>
			</span>
			<div class="css-1kfo0kb euhjq6q3">
				<label class="css-ef7ez6 euhjq6q2">나이</label> <input
					class="_3ASDR _1qwAY"  id="age" name="age"
					value="${member.age }">
			</div>
			<div class="css-1xdhyk6 euhjq6q3">
				<label class="css-ef7ez6 euhjq6q2">이메일</label>
				<div class="css-1eufcdp e159epbo1">
					<div class="input-group email-input">
						<span class="email-input__local"> <input
							class="form-control" placeholder="이메일" id="email" name="email"
							size="1" value="${member.email }"></span>
					</div>
				</div>
			</div>
			<div class="css-1kfo0kb euhjq6q3">
				<label class="css-ef7ez6 euhjq6q2">주소</label> <input
					class="_3ASDR _1qwAY"  id="address"
					name="address" value="${member.address }">
			</div>
			<div class="css-1kfo0kb euhjq6q3">
				<label class="css-ef7ez6 euhjq6q2">전화번호</label> <input
					class="_3ASDR _1qwAY"  id="phone"
					name="phone" value="${member.phone }">
			</div>
		</c:if>
		<c:if test="${member.auth_id eq 1}">
			<section class="css-tbdbun e1y3odo25">
				<h1 class="css-1pmd5bp e1y3odo24">회원정보수정</h1>
			</section>
				<input type="hidden" id="id" name="id" value="${member.id}">
				<input type="hidden" id="pw" name="pw" value="${member.pw}">
				<input type="hidden" name="name" value="${member.name}"> <input
					type="hidden" name="gender" value="${member.gender}"> <input
					type="hidden" name="age" value="${member.age}"> <input
					type="hidden" name="address" value="${member.address}">
				<div class="css-1xdhyk6 euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">이메일</label>
					<div class="css-1eufcdp e159epbo1">
						<div class="input-group email-input">
							<span class="email-input__local"> <input
								class="form-control" placeholder="이메일" id="email" name="email"
								size="1" value="${member.email }"></span>
						</div>
					</div>
				</div>
				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">전화번호</label> <input
						class="_3ASDR _1qwAY"  id="phone"
						name="phone" value="${member.phone }">
				</div>
				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">회사 이름</label> <input
						class="_3ASDR _1qwAY"  id="com_name"
						name="com_name" value="">
				</div>
				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">회사 주소</label> <input
						class="_3ASDR _1qwAY"  id="com_address"
						name="com_address" value="">
				</div>
		</c:if>

		<button class="_3Z6oR _3AsCW _2tsrJ css-1d3w5wq e1y3odo22"
			type="submit" id="btn">회원 정보 수정</button>
	</form>


</body>
</html>