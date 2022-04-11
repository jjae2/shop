<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div
	class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2"
	data-popout="true"
	style="position: absolute; z-index: 1000; top: 20px; right: -20px;">
	<div
		class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
		<div class="drop-down-panel" data-panel-title="정렬"
			data-panel-parents="">
			<ul class="property-filter-panel-entry-list wide">
<!-- 				<li class="property-filter-panel-entry-list__item-wrap"><button
						class="property-filter-panel-entry-list__item" type="button">
						<div class="property-filter-panel-entry-list__item__header">
							<div class="property-filter-panel-entry-list__item__group">
								<div class="_2xClz input-type">
									<input type="radio" class="fs-4H" value=""><span
										class="_2ekY2"></span>
								</div>
								<span class="property-filter-panel-entry-list__item__title">판매순</span>
							</div>
						</div>
					</button></li> -->
					
					
				<li class="property-filter-panel-entry-list__item-wrap"><button
						class="property-filter-panel-entry-list__item selected"
						type="button">
						<div class="property-filter-panel-entry-list__item__header">
							<div class="property-filter-panel-entry-list__item__group">
								<div class="_2xClz input-type">
									<input type="radio" id="radio1" class="fs-4H" value="" checked=""><span
										class="_2ekY2"></span>
								</div>
								<span class="property-filter-panel-entry-list__item__title">인기순</span>
							</div>
						</div>
					</button></li>
				<li class="property-filter-panel-entry-list__item-wrap"><button
						class="property-filter-panel-entry-list__item" type="button">
						<div class="property-filter-panel-entry-list__item__header">
							<div class="property-filter-panel-entry-list__item__group">
								<div class="_2xClz input-type">
									<input type="radio" id="radio2" class="fs-4H" value=""><span
										class="_2ekY2"></span>
								</div>
								<span class="property-filter-panel-entry-list__item__title">낮은가격순</span>
							</div>
						</div>
					</button></li>
				<li class="property-filter-panel-entry-list__item-wrap"><button
						class="property-filter-panel-entry-list__item" type="button">
						<div class="property-filter-panel-entry-list__item__header">
							<div class="property-filter-panel-entry-list__item__group">
								<div class="_2xClz input-type">
									<input type="radio" id="radio3" class="fs-4H" value=""><span
										class="_2ekY2"></span>
								</div>
								<span class="property-filter-panel-entry-list__item__title">높은가격순</span>
							</div>
						</div>
					</button></li>
				<li class="property-filter-panel-entry-list__item-wrap"><button
						class="property-filter-panel-entry-list__item" type="button">
						<div class="property-filter-panel-entry-list__item__header">
							<div class="property-filter-panel-entry-list__item__group">
								<div class="_2xClz input-type">
									<input type="radio" id="radio4" class="fs-4H" value=""><span
										class="_2ekY2"></span>
								</div>
								<span class="property-filter-panel-entry-list__item__title">최신순</span>
							</div>
						</div>
					</button></li>
			</ul>
		</div>
	</div>
</div>