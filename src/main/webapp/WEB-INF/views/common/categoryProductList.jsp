<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<input type="hidden" id="categoryProductTotal" value="${result}"></input>
<c:forEach items="${list}" var="dto">
	
	<div class="category-feed__content__item-wrap col-6 col-lg-4" style="">
		<article class="production-item" id="product-1193829">
			<a class="production-item__overlay"
				href="/s1/product/detail?product_num=${dto.product_num}"></a>
			<div class="production-item-image production-item__image">

				<img class="image" alt=""
					src="../resources/upload/product/${dto.productFileDTO.fileName}">

				<button
					class="production-item-scrap-badge production-item-image__scrap-badge"
					type="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" class="inactive-icon">
												<defs>
												<path id="scrap-icon-10-b"
							d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
												<filter id="scrap-icon-10-a" width="150%" height="150%"
							x="-25%" y="-25%" filterUnits="objectBoundingBox">
												<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
												<feGaussianBlur in="shadowOffsetOuter1"
							result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
												<feComposite in="shadowBlurOuter1" in2="SourceAlpha"
							operator="out" result="shadowBlurOuter1"></feComposite>
												<feColorMatrix in="shadowBlurOuter1"
							values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter>
												<filter id="scrap-icon-10-c" width="150%" height="150%"
							x="-25%" y="-25%" filterUnits="objectBoundingBox">
												<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1"
							stdDeviation="1.5"></feGaussianBlur>
												<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
												<feComposite in="shadowOffsetInner1" in2="SourceAlpha"
							k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
												<feColorMatrix in="shadowInnerInner1"
							values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs>
												<g fill="none" fill-rule="nonzero"
							transform="matrix(1 0 0 -1 0 24)">
												<use fill="#000" filter="url(#scrap-icon-10-a)"
							href="#scrap-icon-10-b"></use>
												<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-10-b"></use>
												<use fill="#000" filter="url(#scrap-icon-10-c)"
							href="#scrap-icon-10-b"></use>
												<path stroke="#FFF"
							d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
					<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet">
												<path fill="#35C5F0" fill-rule="nonzero"
							d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
				</button>


				<div class="production-item-image__dark-overlay"></div>
			</div>
			<div class="production-item__content">
				<h1 class="production-item__header">
					<span class="production-item__header__brand">${dto.memberDTO.com_name}</span><span
						class="production-item__header__name">${dto.product_name}</span>
				</h1>
				<span class="production-item-price">
				<c:if test="${dto.rate ne '0'}">
					<span class="production-item-price__rate">${dto.rate}
						<span class="percentage">% </span>
					</span>
				</c:if>
					<span class="production-item-price__price">
						<fmt:formatNumber value="${dto.totalPrice}" pattern="#,###" />
					</span>
						</span>
				<p class="production-item-stats production-item-stats--review">
					<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet">
												<path fill="currentColor" fill-rule="evenodd"
							d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
					<strong class="avg">4.8</strong> 리뷰 343
				</p>

				<!-- 										<span class="production-item-badge-list"><svg
												class="icon" aria-label="무료배송" width="47" height="20"
												viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
												<rect width="47" height="20" fill="#000" fill-opacity=".07"
													fill-rule="nonzero" rx="4"></rect>
												<path fill="#757575"
													d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z">
													</path></g></svg>
											<svg class="icon" aria-label="특가" width="30" height="20"
												viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
												<rect width="30" height="20" fill="#F77" rx="4"></rect>
												<path fill="#fff"
													d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z">
													</path></svg></span> -->
				<!-- 무료배송 특가 -->


			</div>
		</article>
	</div>
</c:forEach>