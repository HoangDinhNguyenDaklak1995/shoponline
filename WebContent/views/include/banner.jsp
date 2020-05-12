<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="header-bottom">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="mega-container visible-lg visible-md">
					<div class="navleft-container">
						<div class="mega-menu-title">
							<h3>Danh mục</h3>
						</div>
						<div class="mega-menu-category" style="padding: 0; margin: 0;">
							<ul class="nav" style="padding-left: 0px;">
								<c:forEach var="d" items="${danhmucsanpham }">
									<c:if test="${d.subcategoryproduct == 0 }">
										<li><a href="${d.url }/${d.id }.htm">${d.name }</a>
											<div class="wrap-popup">
												<div class="popup">
													<div class="row">
														<div class="col-md-3">
															<h3>${d.name }</h3>
															<ul class="nav">
																<c:forEach var="sd" items="${danhmucsanpham }">
																	<c:choose>
																		<c:when test="${sd.subcategoryproduct == d.id}">
																			<li><a href="${sd.url }/${sd.id }.htm">${sd.name}</a></li>
																		</c:when>
																	</c:choose>
																</c:forEach>
															</ul>
														</div>													
														<div class="col-md-6 has-sep">
															<div class="custom-menu-right">
																<div class="box-banner media">
																	<div class="media-body">
																		<h3>bags &amp; cases</h3>
																		<div class="price-sale">
																			40 <sup>%</sup><sub>off</sub>
																		</div>
																		<a href="#">&gt;shop now</a>
																	</div>
																	<div class="media-right">
																		<img src="theme/images/products/img-01.jpg" alt="">
																	</div>
																</div>
																<div class="box-banner media">
																	<div class="media-body">
																		<h3>Lens Fulters</h3>
																		<div class="price-sale">
																			50 <sup>%</sup><sub>off</sub>
																		</div>
																		<a href="#">&gt;shop now</a>
																	</div>
																	<div class="media-right">
																		<img src="theme/images/products/img-02.jpg" alt="">
																	</div>
																</div>
																<div class="box-banner media">
																	<div class="media-body">
																		<h3>Flashes</h3>
																		<div class="price-sale">
																			30 <sup>%</sup><sub>off</sub>
																		</div>
																		<a href="#">&gt;shop now</a>
																	</div>
																	<div class="media-right">
																		<img src="theme/images/products/img-03.jpg" alt="">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div></li>
									</c:if>
								</c:forEach>		
							</ul>
						</div>
					</div>
				</div>
			</div>
		
		</div>
	</div>
</div>
<!-- /.header-bottom -->