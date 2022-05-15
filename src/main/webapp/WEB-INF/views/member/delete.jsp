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

	<div class="container">
		<div class="checkout__form spad">
			<div class="row">
				<div class="col-lg-6 text-center"
					style="float: none; margin: 0 auto;">
					<div class="section-title">
						<h2>회원탈퇴</h2>
						<br>
						<h5>회원탈퇴를 하시려면 비밀번호를 입력하셔야 합니다.</h5>
					</div>
					<br>
					<form action="./delete" method="post">
						<div class="checkout__input">
							<input type="hidden" name="id" value="${member.id}">
						</div>

						<div class="update-password__section">
							<div class="update-password__section__title">비밀번호 확인</div>
							<div class="expert-form-group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<input type="password" class="form-control" id="pw"
											name="pw" placeholder="8글자 이상 12글자이하" value="">
									</div>
								</div>
							</div>
						</div>

						<button type="button" id="cancel" class="site-btn">취소</button>
						<button class="button button--color-blue button--size-50 button--shape-4 update-password__submit" type="submit">회원 탈퇴</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script>
		const cancel = document.querySelector("#cancel");
		cancel.addEventListener("click", function() {
			window.location.href = "./mypage";
		});
	</script>

</body>
</html>