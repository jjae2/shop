<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<c:forEach items="${list}" var="dto">
	
	<div class="category-feed__content__item-wrap col-6 col-lg-4" style="">
		<article class="production-item" id="product-1193829">
			<a class="production-item__overlay"
				href="/s1/product/detail?product_num=${dto.product_num}"></a>
			<div class="production-item-image production-item__image">

				<img class="image" alt=""
					src="./resources/upload/product/${dto.productFileDTO.fileName}">

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
			</div>
		</article>
	</div>
</c:forEach>