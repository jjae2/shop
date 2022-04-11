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
<c:import url="../template/header.jsp"></c:import>
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
					<div class="editor-top-sub-section-header__sub-title">${board}에 필요한 정보입니다.</div>
				</div>
			</div>
			
			
			
			
			
			<div class="open expanded" style="overflow: hidden;">
				<div class="editor-top-sub-section-content" role="region" id="id-1000 -content" aria-labelledby="id-1000-header">
					<div class="editor-metadata-form">
					<form action="./add" method="post" enctype="multipart/form-data">
					<input type="hidden" name="id" class="form-control" value="${member.id}">
				
						<div class="editor-form-group">
							<div class="editor-form-group__label"> 
								게시글 종류
							</div>
	
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<div class="css-1yggbmr eslktj0">
										<span class="css-me3hyb e13w87p50">
											<div class="input-group select-input">
												<select name="type" class="form-control empty">
													<option value="0" selected>공지사항</option>
													<option value="1">세일공지</option>
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
								제목
								<span class="editor-form-group__required">*</span>
							</div>
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<span class="css-me3hyb e13w87p50">
										<div class="css-1nrevy2 eyipm3c1">
											<input placeholder="제목을 입력해주세요" name="title" class="form-control" value="">
											<span class="css-1quj80b eyipm3c0"></span>
										</div>
									</span>
								</div>
							</div>
						</div>
	
						<div class="editor-form-group">
							<div class="editor-form-group__label">
							내용
							<span class="editor-form-group__required">*</span>
							</div>
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<span class="css-me3hyb e13w87p50">
										<div class="css-1nrevy2 eyipm3c1">
											<textarea placeholder="내용을 입력해주세요" name="contents" class="form-control" value="" style="width: 500px; height: 700px;"></textarea>
											<span class="css-1quj80b eyipm3c0"></span>
										</div>
									</span>
								</div>
							</div>
						</div>						
						
	 					<div class="editor-form-group">
							<div class="editor-form-group__label">
							첨부사진
							</div>
							
							<div class="editor-form-group__content">
								<div class="editor-form-group__input">
									<div class="editor-link-url-input">
										<div id="fileResult1">
										
											<div class="editor-link-url-input-item" id="del1">																				
	
																							
												<div class="editor-link-url-input-item__row">
								
													<div class="editor-link-url-input-item__actions">	
														<input type="file" name="files">																																
														<button class="editor-link-url-input-item__action fileAdd1" type="button" title="추가">add</button>																								
														<button class="editor-link-url-input-item__action fileDel1" type="button" title="삭제" data-num="del1">remove</button>																								
													</div>									
	
												</div>								
											</div>
	
										</div>
										<p class="editor-metadata-form__input-footnote">사진은 최대 9개까지 입력할 수 있습니다.</p>
									</div>
								</div>
							</div>
						</div>
							
	
	
	
					<div class="addNotice addProduct">
						<button class="addNoticeSubmit addProductSubmit" type="submit">등록하기</button>
					</div>
					
					</form>
					</div>
				</div>
			</div>
		</div>		
	</div>
</div>




<c:import url="../template/footer.jsp"></c:import>
<script src="../resources/js/noticeAdd.js"></script>


</body>
</html>