<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>

<%-- 	<c:when test="${categoryFilter_num eq '1'}">


		<div
			class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0"
			data-popout="true"
			style="position: absolute; z-index: 1000; left: 15px; top: 35px;">
			<div
				class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
				<div class="drop-down-panel" data-panel-title="세일"
					data-panel-parents="">
					<ul class="property-filter-panel-entry-list wide">
	
					
						<!-- <li class="property-filter-panel-entry-list__item-wrap">
							<button class="property-filter-panel-entry-list__item"
								type="button">
								<div class="property-filter-panel-entry-list__item__header">
									<div class="property-filter-panel-entry-list__item__group">
										<div class="_3zqA8 input-type">
											<input type="checkbox" class="_3UImz" value="" id="categoryFilterSale"> 

											<span class="_2mDYR"> 
												<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR">
	                                                <path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path>
	                                            </svg>
											</span>
										</div>
										<span class="property-filter-panel-entry-list__item__title">세일</span>
									</div>
								</div>
							</button>
						</li> -->
						
						
						
						
					</ul>
				</div>
			</div>
		</div>


	</c:when> --%>



	<c:when test="${categoryFilter_num eq '2'}">

		<div
			class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0"
			data-popout="true"
			style="position: absolute; z-index: 1000; left: 75px; top: 35px;">

			<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
				
				<div class="drop-down-panel" data-panel-title="브랜드"
					data-panel-parents="">
					
					<section class="property-filter-panel-range-control">
						<div class="property-filter-panel-range-control__input-row">
							<span class="property-filter-panel-range-control__input-row__cell">
								<span class="property-filter-panel-range-control__input-row__input-wrap">
									<input type="text" placeholder="브랜드명" class="property-filter-panel-range-control__input-row__input" value="">
								</span>
							</span>
							<button class="property-filter-panel-range-control__input-row__button property-filter-panel-range-control__input-row__button1" type="button" id="categoryFilterResultButton1">적용</button>
						</div>
						<div class="property-filter-panel-range-control__separator"></div>
						<ul class="property-filter-panel-entry-list property-filter-panel-range-control__list">
							<li class="property-filter-panel-entry-list__item-wrap"></li>
						</ul>
					</section>
				</div>
			</div>
		</div>



	</c:when>



	<c:when test="${categoryFilter_num eq '3'}">

		<div
			class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0"
			data-popout="true"
			style="position: absolute; z-index: 1000; left: 150px; top: 35px;">
			<div
				class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
				<div class="drop-down-panel" data-panel-title="가격"
					data-panel-parents="">
					<section class="property-filter-panel-range-control">
						<div class="property-filter-panel-range-control__input-row">
							<span
								class="property-filter-panel-range-control__input-row__cell"><span
								class="property-filter-panel-range-control__input-row__input-wrap"><input
									type="text" width="5" placeholder="0"
									class="property-filter-panel-range-control__input-row__input"
									value=""></span><span
								class="property-filter-panel-range-control__input-row__footer">원</span></span><span
								class="property-filter-panel-range-control__input-row__separator">~</span><span
								class="property-filter-panel-range-control__input-row__cell"><span
								class="property-filter-panel-range-control__input-row__input-wrap"><input
									type="text" width="5" placeholder="99,999,000"
									class="property-filter-panel-range-control__input-row__input"
									value=""></span><span
								class="property-filter-panel-range-control__input-row__footer">원</span></span>
							<button
								class="property-filter-panel-range-control__input-row__button property-filter-panel-range-control__input-row__button2"
								type="button" id="categoryFilterResultButton2">적용</button>
						</div>
						<div class="property-filter-panel-range-control__separator"></div>
						<ul class="property-filter-panel-entry-list property-filter-panel-range-control__list">
							<li class="property-filter-panel-entry-list__item-wrap"></li>
						</ul>

					</section>
				</div>
			</div>
		</div>



	</c:when>


</c:choose>


