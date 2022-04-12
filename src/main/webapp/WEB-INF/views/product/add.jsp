<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
<link href="../resources/css/productAdd.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>
</head>
<body>
<input type="hidden" id="fileAdd">
<input type="hidden" id="fileResult">
<input type="hidden" id="files">





	<c:import url="../template/header.jsp"></c:import>
	<h1>${board} Add Page</h1>
<%-- 	

	<fieldset>
		Category<select name="category_num">

		</select>	
	</fieldset>
	
	<fieldset>
		SELLER<input type="text" name="id" value="${member.id}" readonly><!--  -->
	</fieldset>
	<fieldset>PRODUCT_NAME<input type="text" name="product_name"></fieldset>
	<fieldset>PRODUCT_PRICE<input type="text" name="product_price"></fieldset>
	<fieldset>Content<textarea name="content" rows="" cols=""></textarea></fieldset>
	<fieldset>STOCK<input type="text" name="stock"></fieldset>
	<fieldset>RATE<input type="text" name="rate"></fieldset>

	<div id="fileResult">
		<div id="del0"><input type="file" name="files"><button type="button" id="fileAdd">FileAdd</button><button type="button" class="del" data-num="del1">DEL</button></div>
	</div>
	<div>
		
		<button type="button" class="del">Sample DEL</button>
	</div> --%>
		


<hr>
<hr>

<div class="editor__top">
	<div class="editor-top-section">
		<div class="editor-top-sub-section">
			<div class="editor-top-sub-section-header"
				id="id-1000-header" aria-labelledby="id-1000 -content"
				aria-expanded="true">
				<div class="editor-top-sub-section-header__left">
					<div class="editor-top-sub-section-header__icon">
						<svg class="icon" width="26" height="26" viewBox="0 0 26 26"
							preserveAspectRatio="xMidYMid meet">
							<rect width="26" height="26" fill="#F8C332" rx="10"></rect>
							<g fill="none" stroke="#FFF">
							<path stroke-linejoin="round" stroke-width="1.2"
								d="M15.06 8.65l-6.9 6.88L7 18.98l3.45-1.15 6.9-6.9-2.3-2.28z"></path>
							<path stroke-width="1.2"
								d="M15.04 8.64l1.45-1.45a.65.65 0 01.93 0l1.37 1.38a.65.65 0 010 .92l-1.45 1.45"></path>
							<path d="M8.27 15.2l2.48 2.47"></path></g></svg>
					</div>
					<div class="editor-top-sub-section-header__title">필수 정보 입력</div>
					<div class="editor-top-sub-section-header__sub-title">상품판매에 필요한 정보이니 최대한 꼼꼼하게 입력해주세요.</div>
				</div>
			</div>
			
			
			
			
			
			<div class="open expanded" style="overflow: hidden;">
				<div class="editor-top-sub-section-content" role="region" id="id-1000 -content" aria-labelledby="id-1000-header">
					<div class="editor-metadata-form">
					<form action="./add" method="post" enctype="multipart/form-data">
					<input type="hidden" name="id" class="form-control" value="${member.id}">
					<input type="hidden" name="content" class="form-control" value="hi">
					
					
					
					
						<div class="editor-form-group">
							<div class="editor-form-group__label"> 
								카테고리
								<span class="editor-form-group__required">*</span>
							</div>
	
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<div class="css-1yggbmr eslktj0">
										<span class="css-me3hyb e13w87p50">
											<div class="input-group select-input">
												<select name="category_num" class="form-control empty">
													<option value="" disabled="">선택해주세요.</option>
													<option value="0">가구</option>
													<option value="1">패브릭</option>
													<option value="2">조명</option>
													<option value="3">가전</option>
													<option value="4">주방용품</option>
													<option value="5">데코·식물</option>
													<option value="6">수납·정리</option>
													<option value="7">생활용품</option>
													<option value="8">생필품</option>			
													<option value="9">공구·DIY</option>
													<option value="10">인테리어시공</option>
													<option value="11">반려동물</option>
													<option value="12">캠핑용품</option>
													<option value="13">실내운동</option>
													<option value="14">유아·아동</option>
													<option value="15">렌탈</option>
													<option value="16">식품</option>
												</select>
												<span class="select-input__icon">
													<svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">
														<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
													</svg>
												</span>
											</div>
										</span>
									</div>
								</div>
							</div>
						</div>
						
						
						
						
						
						
						
	
						<div class="editor-form-group">
							<div class="editor-form-group__label">
								상품명
								<span class="editor-form-group__required">*</span>
							</div>
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<span class="css-me3hyb e13w87p50">
										<div class="css-1nrevy2 eyipm3c1">
											<input placeholder="" name="product_name" class="form-control" value="">
											<span class="css-1quj80b eyipm3c0"></span>
										</div>
									</span>
								</div>
							</div>
						</div>
	
						<div class="editor-form-group">
							<div class="editor-form-group__label">
							상품가격
							<span class="editor-form-group__required">*</span>
							</div>
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<span class="css-me3hyb e13w87p50">
										<div class="css-1nrevy2 eyipm3c1">
											<input placeholder="" name="product_price" class="form-control" value="">
											<span class="css-1quj80b eyipm3c0">원</span>
										</div>
									</span>
								</div>
							</div>
						</div>
	
						<div class="editor-form-group">
							<div class="editor-form-group__label">
							재고수량
							<span class="editor-form-group__required">*</span>
							</div>
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<span class="css-me3hyb e13w87p50">
										<div class="css-1nrevy2 eyipm3c1">
											<input placeholder="" name="stock" class="form-control" value="">
											<span class="css-1quj80b eyipm3c0">개</span>
										</div>
									</span>
								</div>
							</div>
						</div>
	
						<div class="editor-form-group">
							<div class="editor-form-group__label">
							할인율
							<span class="editor-form-group__required">*</span>
							</div>
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<span class="css-me3hyb e13w87p50">
										<div class="css-1nrevy2 eyipm3c1">
											<input placeholder="" name="rate" class="form-control" value="0">
											<span class="css-1quj80b eyipm3c0">%</span>
										</div>
									</span>
								</div>
							</div>
						</div>
	
						
						
	 					<div class="editor-form-group">
							<div class="editor-form-group__label">
							상품사진
							<span class="editor-form-group__required">*</span>
							</div>
							
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<div class="editor-link-url-input">
										<div id="fileResult1">
										
											<div class="editor-link-url-input-item" id="del1">																				
	
																							
												<div class="editor-link-url-input-item__row">
		<!--  -->									
													<div class="editor-link-url-input-item__actions">	
														<input type="file" name="files">																																
														<button class="editor-link-url-input-item__action fileAdd1" type="button" title="추가">add</button>																								
														<button class="editor-link-url-input-item__action fileDel1" type="button" title="삭제" data-num="del1">remove</button>																								
													</div>
		<!--  -->											
	
												</div>								
											</div>
	
										</div>
										<p class="editor-metadata-form__input-footnote">사진은 최대 9개까지 입력할 수 있습니다.</p>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="editor-form-group">
							<div class="editor-form-group__label">
							상품정보
							<span class="editor-form-group__required">*</span>
							</div>
							
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<div class="editor-link-url-input">
										<div id="fileResultInfo">
										
											<div class="editor-link-url-input-item" id="delInfo1">																				
	
																							
												<div class="editor-link-url-input-item__row">
		<!--  -->									
													<div class="editor-link-url-input-item__actions">	
														<input type="file" name="filesInfo">																																
														<button class="editor-link-url-input-item__action fileAddInfo1" type="button" title="추가">add</button>																								
														<button class="editor-link-url-input-item__action fileDelInfo1" type="button" title="삭제" data-num="delInfo1">remove</button>																								
													</div>
		<!--  -->											
	
												</div>								
											</div>
	
										</div>
										<p class="editor-metadata-form__input-footnote">사진은 최대 9개까지 입력할 수 있습니다.</p>
									</div>
								</div>
							</div>
						</div>

	
	
	
	
					<div class="addProduct">
						<button class="addProductSubmit" type="submit">등록하기</button>
					</div>
					
					</form>
					</div>
				</div>
			</div>
		</div>		
	</div>
</div>



	
<script src="../resources/js/file.js"></script>	
<script src="../resources/js/productInfoFile.js"></script>	


</body>
</html>