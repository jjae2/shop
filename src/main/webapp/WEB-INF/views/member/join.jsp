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
			<div class="css-5bso4y e1y3odo23">
				<h1 class="css-1pmd5bp e1y3odo24">회원가입</h1>
			</div>
			<form action="./join" method="post" id="frm" enctype="multipart/form-data">
				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">아이디</label>
					<div class="css-1npk207 euhjq6q1">다른 유저와 겹치지 않는 아이디를 입력해주세요.
						(8자이상12자이하)</div>
					<input class="_3ASDR _1qwAY"  id="id"
						name="id" placeholder="아이디 (8자~12자)" value="">
				<div>
				<button type="button" id="idCheckBtn" class="site-btn">중복확인</button>
				</div>
				</div>
				<div class="css-1thr4j euhjq6q0" id="idResult"></div>

				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">비밀번호</label>
					<div class="css-1npk207 euhjq6q1">영문, 숫자를 포함한 8자 이상의 비밀번호를
						입력해주세요.</div>
					<input class="_3ASDR _1qwAY"  id="pw"
						name="pw" type="password" placeholder="비밀번호" value="">
				</div>
				<div class="css-1thr4j euhjq6q0" id="pwResult"></div>

				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">비밀번호 확인</label> <input
						class="_3ASDR _1qwAY" id="pw2" name="pw2"
						type="password" placeholder="비밀번호 확인" value="">
				</div>
				<div class="css-1thr4j euhjq6q0" id="pw2Result"></div>

				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">이름</label> <input
						class="_3ASDR _1qwAY"  id="name"
						name="name" placeholder="" value="">
				</div>
				<div class="css-1thr4j euhjq6q0" id="nameResult"></div>

				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">프로필</label> <input
						class="_3ASDR _1qwAY"  type="file"
						id="photo" name="photo" value="">
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
						class="_3ASDR _1qwAY" id="age" name="age"
						value="">
				</div>
				<div class="css-1thr4j euhjq6q0" id="ageResult"></div>

				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">이메일</label> <input
						class="_3ASDR _1qwAY"  id="email"
						name="email" placeholder="email@co.kr">
				<button type="button" id="emailCheckBtn" class="site-btn">중복확인</button>
				</div>
				<div class="css-1thr4j euhjq6q0" id="emailResult"></div>

				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">주소</label> <input
						class="_3ASDR _1qwAY"  id="address"
						name="address" value="">
				</div>
				<div class="css-1thr4j euhjq6q0" id="addressResult"></div>

				<div class="css-1kfo0kb euhjq6q3">
					<label class="css-ef7ez6 euhjq6q2">전화번호</label> <input
						class="_3ASDR _1qwAY"  id="phone"
						name="phone" placeholder="010" value="">
				</div>
				<div class="css-1thr4j euhjq6q0" id="phoneResult"></div>

				<button class="_3Z6oR _3AsCW _2tsrJ css-1d3w5wq e1y3odo22" type="button" id="btn">회원가입하기</button>
				<input type="hidden" name="com_name" value=""> 
				<input type="hidden" name="com_address" value="">
				</form>

			<p class="css-frl1s e1y3odo21">
			이미 아이디가 있으신가요?<a href="./login" class="css-i9fa3q e1y3odo20">로그인</a>
			</p>
	</section>
	</div>


	<script type="text/javascript" src="../resources/js/join.js"></script>
</body>
</html>