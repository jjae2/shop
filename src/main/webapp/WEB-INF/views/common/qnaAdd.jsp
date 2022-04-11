<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div
	class="react_modal react_modal-center product_question_modal open open-active">
	<div class="react_modal_content-wrap">
		<div class="react_modal_content product_question">
			<form class="product_question_wrap">
				<button type="button" class="product_question_wrap_close"
					id="product_question_wrap_close">

					<svg class="product_question_wrap_close_icon" width="20"
						height="20" viewBox="0 0 20 20" fill="currentColor"
						preserveAspectRatio="xMidYMid meet">
							<path class="product_question_wrap_close_icon2"
							fill-rule="nonzero"
							d="M11.6 10l7.1 7.1-1.6 1.6-7.1-7.1-7.1 7.1-1.6-1.6L8.4 10 1.3 2.9l1.6-1.6L10 8.4l7.1-7.1 1.6 1.6z"></path></svg>
				</button>

				<div class="product_question_wrap_title">상품 문의하기</div>
				<div class="product_question_wrap_sub-title">문의유형</div>
				<div class="product_question_wrap_type-select">
					<div
						class="product_question_wrap_type-select_box product_question_wrap_type-select_box-select"
						id="QnaType0">상품</div>
					<div class="product_question_wrap_type-select_box" id="QnaType1">배송</div>
					<div class="product_question_wrap_type-select_box" id="QnaType2">반품</div>
					<div class="product_question_wrap_type-select_box" id="QnaType3">교환</div>
					<div class="product_question_wrap_type-select_box" id="QnaType4">환불</div>
					<div class="product_question_wrap_type-select_box" id="QnaType5">기타</div>
					<input type="hidden" id="qnaTypeResult" value="0">
				</div>

				<div class="product_question_wrap_sub-title">상품명</div>
				<div class="product_question_wrap_option-select">
					<div
						class="input-group select-input product_question_wrap_option-select_input">
						<input type="text" disabled id="product_name_sub_title"
							value="${productDTO.product_name}"> <input type="text"
							readonly id="product_num_sub_title"
							value="${productDTO.product_num}"> <input type="text"
							readonly id="id_sub_title" value="${qnaDTO.id}">
					</div>
				</div>
				<div class="product_question_wrap_sub-title">문의내용</div>
				<textarea placeholder="문의 내용을 입력하세요" maxlength="1000"
					class="form-control text-area-input product_question_wrap_question"
					id="qnaContents" style="height: 40px;"></textarea>

				<div class="form-check checkbox-input product_question_checkbox">
					<label class="form-check-label"><input class="form-check1" id="qna_form_check" type="checkbox" value="0">
						<span class="check-img"></span>비밀글로 문의하기
					</label>
				</div>








				<div class="product_question_wrap_explain">
					- 문의내용에 대한 답변은 ‘마이페이지 &gt; 나의 쇼핑 &gt; 나의 문의내역’ 또는 ‘상품 상세페이지’에서 확인
					가능합니다.<br>- 배송,결제,교환/반품 문의는 고객센터로 문의 바랍니다.<br>- 상품과 관련
					없거나 부적합한 내용을 기재하시는 경우, 사전 고지 없이 삭제 또는 차단될 수 있습니다.
				</div>
				<div class="product_question_wrap_buttons">
					<button type="button"
						class="button button--color-blue button--size-50 button--shape-4 product_question_wrap_buttons_submit"
						id="product_question_wrap_buttons_submit">완료</button>
				</div>
			</form>
		</div>
	</div>
</div>
