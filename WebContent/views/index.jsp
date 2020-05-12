<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/animatescroll.js"></script>
<script src="js/minicart.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<jsp:include page="./include/themehead.jsp" />
<title>Oean Shoppe-Trang web bán hàng trực tuyến</title>
<link href="./css/theme.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<jsp:include page="./include/banner.jsp"></jsp:include>
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="homebanner">
					<div id="sync1">
						<div class="item">
							<a
								href='tintuc/newss.htm'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16482&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								src='//cdn2.tgdd.vn/qcao/10_11_2017_16_58_59_Samsung-Note-FE-800-300.png'
								alt='2017 - T11 - Galaxy Note FE' /></a>
						</div>
						<div class="item">
							<a href='tintuc/newss.htm'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=15964&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn4.tgdd.vn/qcao/30_10_2017_10_00_40_HC-Tra-Gop-800-300.png'
								alt='2017 - T11 - Tra Gop HC' /></a>
						</div>
						<div class="item">
							<a href='tintuc/newss.htm'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16219&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn4.tgdd.vn/qcao/10_11_2017_16_25_39_Launching-Oppo-F5-800-300.png'
								alt='2017 - T11 - Oppo F5' /></a>
						</div>
						<div class="item">
							<a href='tintuc/newss.htm'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16447&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn2.tgdd.vn/qcao/10_11_2017_10_18_01_iphone-big-800-300.png'
								alt='2017 - T11 - Apple Big' /></a>
						</div>
						<div class="item">
							<a href='tintuc/newss.htm'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16017&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn2.tgdd.vn/qcao/31_10_2017_00_44_51_phu-kien-loa-blu-800-300.png'
								alt='2017 - T11 - PK Chung' /></a>
						</div>
						<div class="item">
							<a href='tintuc/newss.htm'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16428&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn3.tgdd.vn/qcao/09_11_2017_14_54_35_Moto-X4-800-300.png'
								alt='2017 - T11 - Motorola Flash Sale' /></a>
						</div>
						<div class="item">
							<a
								href='tintuc/newss.htm'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16403&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn3.tgdd.vn/qcao/08_11_2017_16_37_17_Mobiistar-Zumbo-S2-Dual-800-300.png'
								alt='2017 - T11 - Zumbo S2 Dual' /></a>
						</div>

					</div>
					<div id="sync2">
						<div class="item">
							<h3>
								Đặt Galaxy Note FE<br />Tặng Bộ Quà 4 Triệu
							</h3>
							<i class="arrowbar"></i>
						</div>
						<div class="item">
							<i class="arrowbarleft"></i>
							<h3>
								Lễ Hội Trả Góp 0%<br />Duyệt Nhanh 10 Phút
							</h3>
							<i class="arrowbar"></i>
						</div>
						<div class="item">
							<i class="arrowbarleft"></i>
							<h3>
								Sắm Oppo F5<br />Trả Góp 0%
							</h3>
							<i class="arrowbar"></i>
						</div>
						<div class="item">
							<i class="arrowbarleft"></i>
							<h3>iPhone Tặng Voucher 2 Triệu Hoặc Trả Góp 0%</h3>
							<i class="arrowbar"></i>
						</div>
						<div class="item">
							<i class="arrowbarleft"></i>
							<h3>
								Sắm Loa Bluetooth<br />Giảm Sốc 40%
							</h3>
							<i class="arrowbar"></i>
						</div>
						<div class="item">
							<i class="arrowbarleft"></i>
							<h3>
								Vui Cuối Tuần<br />Cùng Motorola
							</h3>
							<i class="arrowbar"></i>
						</div>
						<div class="item">
							<i class="arrowbarleft"></i>
							<h3>
								Mobiistar Zumbo S2 Dual<br />Trả Góp 0% Lãi Suất
							</h3>
						</div>
					</div>
				</div>
				<div class="homenews">
					<figure> <b></b> <a href="tintuc.htm" class="readmore">Đọc
						thêm</a> </figure>	
					<ul>
						<c:forEach begin="0" end="4" var="u" items="${toptintuc }">
									<c:set var="dem" value="${status.index + 1 }"></c:set>
									<c:choose>
										<c:when test="${currentpage > 1 }">
											<c:set var="dem"
												value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
										</c:when>
									</c:choose>
						<li><a
							href="${u.categorys.url }/${u.link}/${u.id }.htm">
								<img style="width: 100px;height:80px; border: 1px solid #f5f5f5;"
								src="files/tintuc/${u.img }">
								<h3 style="color: black;">${u.title }</h3><span>Vào lúc: <fmt:formatDate
							value="${u.createdate }" pattern="HH:mm dd-MM-yyyy" /></span>
						</a></li>						</c:forEach>
					</ul>
				</div>
				<!--<script defer="defer"
					src="https://cdn4.tgdd.vn/v2015/Scripts/desktop/V4/home.min.v201711060430.js"></script>-->
			</div>
			<!-- /advertisement -->
			<br>
			<div class="row">
				<div class="col-sm-3 col-left">
					<div class="menu-recent block">
						<div class="title-group">
							<h2>Tin hot</h2>
						</div>
						<div id="latest-news" class="owl-container">
							<div class="owl">
							<c:forEach var="n" items="${tintucssss }" varStatus="status">
									<c:set var="dem" value="${status.index + 1 }"></c:set>
									<c:choose>
										<c:when test="${currentpage > 1 }">
											<c:set var="dem"
												value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
										</c:when>
									</c:choose>
								<div>
									<div class="item-inner">
										<div class="images-container">
											<a href="http://localhost:8080/duan/${n.categorys.url }/${n.link }/${n.id }.htm"> 
											<img alt="" style="width: 300px;height:200px; border: 1px solid #f5f5f5;"
												src="files/tintuc/${n.img }" />
											</a>
										</div>
										<div class="des-container">
											<div class="date-comments">
												<div class="time">
													<span class="date"><fmt:formatDate
														value="${n.createdate }" pattern="dd-MM-yyyy" /></span>
												</div>
											</div>
											<div class="des">
												<h4>
													<a href="http://localhost:8080/duan/${n.categorys.url }/${n.link }/${n.id }.htm"
													 class="title-blog"><span>${n.title }</span></a>
												</h4>
												${n.sum_content }
											</div>
										</div>
									</div>
								</div>
							</c:forEach>	
							</div>
						</div>
					</div>
					<div class="block">
						<div class="title-group">
							<h2 style="text-transform: uppercase;">Nổi bật</h2>
						</div>
						<div id="special-offer" class="owl-container">
							<div class="owl">
								<c:forEach var="t" items="${sanphambc }" varStatus="status">
									<c:set var="dem" value="${status.index + 1 }"></c:set>
									<c:choose>
										<c:when test="${currentpage > 1 }">
											<c:set var="dem"
												value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
										</c:when>
									</c:choose>
									<div class='productslider-item item'>
										<div class="item-inner">
											<div class="images-container">
												<div class="product_icon">
													<div class='new-icon'>
														<span>Mới</span>
													</div>
												</div>
												<a href="detail/${t.id}.htm" title="Nunc facilisis" class="product-image">
													<img style="height: 250px;" src="files/sanpham/${t.img }"
													alt="Nunc facilisis" />
												</a>
												<div class="box-hover">
													<ul class="add-to-links">
														<li><a href="#" class="link-quickview">Quick View</a></li>
														<li><a href="#" class="link-wishlist">Add to
																Wishlist</a></li>
														<li><a href="#" class="link-compare">Add to
																Compare</a></li>
														<li><a href="detail/${t.id}.htm" class="link-cart">Add to
																Cart</a></li>
													</ul>
												</div>
											</div>
											<div class="des-container">
												<h2 class="product-name">
													<a href="#" title="Nunc facilisis">${t.name }</a>
												</h2>
												<div class="price-box">
													<p class="special-price">
														<span class="price-label">Special Price</span> <span
															class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${t.price}" /> Đ</span>
													</p>
													<p class="old-price">
														<span class="price-label">Regular Price: </span> <span
															class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${t.gianhap}" /> Đ</span>
													</p>
												</div>	
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="block">
						<div class="title-group">
							<h2>Liên hệ ngay</h2>
						</div>
						<div id="clients-say" class="owl-container">
							<div class="owl">
								<div class='testimonial-list'>
									<div class="testimonial-sidebar-content">
										<div class="content">
											<a href="#">Mục tiêu:...</a>
										</div>
										<div class="post-by">
											<div class="testimonial-content-avatar">
												<img src="theme/images/avatar/avatar-01.jpg" alt="test" />
											</div>
											<div class="box-author">
												<span class="testimonial-author">Nguyễn Đình Hoàng</span> <span
													class="testimonial-date">DakLak,VietNam</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.block - Latest News -->
				</div>
				<!-- /.col-left -->
				<div class="col-sm-9 col-right">
					<div class="featuredproductslider-container">
						<div class="title-group1">
							<h2 style="text-transform: uppercase;">Sản phẩm hot</h2>
						</div>
						<div id="featured-products" class="owl-container">
							<div class="owl">
								<c:forEach var="t" items="${sanpham }" varStatus="status">
									<c:set var="dem" value="${status.index + 1 }"></c:set>
									<c:choose>
										<c:when test="${currentpage > 1 }">
											<c:set var="dem"
												value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
										</c:when>
									</c:choose>
									<div class='productslider-item item'>
										<div class="item-inner">
											<div class="images-container">
												<div class="product_icon">
													<div class='new-icon'>
														<span>Mới</span>
													</div>
												</div>
												<a href="detail/${t.id}.htm" title="Nunc facilisis" class="product-image">
													<img style="height: 250px;" src="files/sanpham/${t.img }"
													alt="Nunc facilisis" />
												</a>
												<div class="box-hover">
													<ul class="add-to-links">
														<li><a href="#" class="link-quickview">Quick View</a></li>
														<li><a href="#" class="link-wishlist">Add to
																Wishlist</a></li>
														<li><a href="#" class="link-compare">Add to
																Compare</a></li>
														<li><a id="${t.idproduct }" data-name="${t.name}"
											data-price="${t.price }" data-image="files/sanpham/${t.img}"
											class="add-to-cart btn btn-primary">Add to cart </a></li>
													</ul>
												</div>
											</div>
											<div class="des-container">
												<h2 class="product-name">
													<a href="#" title="Nunc facilisis">${t.name }</a>
												</h2>
												<div class="price-box">
													<p class="special-price">
														<span class="price-label">Special Price</span> <span
															class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${t.price}" /> Đ</span>
													</p>
													<p class="old-price">
														<span class="price-label">Regular Price: </span> <span
															class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${t.gianhap}" /> Đ</span>
													</p>
												</div>
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 67%"></div>
													</div>
													<span class="amount"><span> <fmt:formatDate
																value="${t.createDate }" pattern="HH:mm dd-MM-yyyy" />
													</span> </span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="featuredproductslider-container">
						<div class="title-group1">
							<h2 style="text-transform: uppercase;">Sản phẩm sale</h2>
						</div>
						<div id="featured-products" class="owl-container">
							<div class="owl">
								<c:forEach var="t" items="${sanphamsale }" varStatus="status">
									<c:set var="dem" value="${status.index + 1 }"></c:set>
									<c:choose>
										<c:when test="${currentpage > 1 }">
											<c:set var="dem"
												value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
										</c:when>
									</c:choose>
									<div class='productslider-item item'>
										<div class="item-inner">
											<div class="images-container">
												<div class="product_icon">
													<div class='new-icon'>
														<span>Mới</span>
													</div>
													<div class="sale-icon">
														<span> ${t.saleprice } %</span>
													</div>
												</div>
												<a href="detail/${t.id}.htm" title="Nunc facilisis" class="product-image">
													<img style="height: 250px;" src="files/sanpham/${t.img }"
													alt="Nunc facilisis" />
												</a>
												<div class="box-hover">
													<ul class="add-to-links">
														<li><a href="#" class="link-quickview">Quick View</a></li>
														<li><a href="#" class="link-wishlist">Add to
																Wishlist</a></li>
														<li><a href="#" class="link-compare">Add to
																Compare</a></li>
														<li><a href="detail/${t.id}.htm" class="link-cart">Add to
																Cart</a></li>
												
													</ul>
												</div>
											</div>
											<div class="des-container">
												<h2 class="product-name">
													<a href="#" title="Nunc facilisis">${t.name }</a>
												</h2>
												<div class="price-box">
													<p class="special-price">
														<span class="price-label">Special Price</span> <span
															class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${t.price}" /> Đ</span>
													</p>
													<p class="old-price">
														<span class="price-label">Regular Price: </span> <span
															class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${t.gianhap}" /> Đ</span>
													</p>
												</div>
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 67%"></div>
													</div>
													<span class="amount"><span> <fmt:formatDate
																value="${t.createDate }" pattern="HH:mm dd-MM-yyyy" />
													</span> </span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
<
									
					<div class="banner" style="margin-bottom: -10px;"></div>
					<div class="featuredproductslider-container">
						<div class="title-group1">
							<h2 style="text-transform: uppercase;">Sản phẩm nổi bật</h2>
						</div>
						<div id="featured-products" class="owl-container">
							<div class="owl">
								<c:forEach var="t" items="${sanphambc }" varStatus="status">
									<c:set var="dem" value="${status.index + 1 }"></c:set>
									<c:choose>
										<c:when test="${currentpage > 1 }">
											<c:set var="dem"
												value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
										</c:when>
									</c:choose>
									<div class='productslider-item item'>
										<div class="item-inner">
											<div class="images-container">
												<div class="product_icon">
													<div class='new-icon'>
														<span>Mới</span>
													</div>
												</div>
												<a href="detail/${t.id}.htm" title="Nunc facilisis" class="product-image">
													<img style="height: 250px;" src="files/sanpham/${t.img }"
													alt="Nunc facilisis" />
												</a>
												<div class="box-hover">
													<ul class="add-to-links">
														<li><a href="#" class="link-quickview">Quick View</a></li>
														<li><a href="#" class="link-wishlist">Add to
																Wishlist</a></li>
														<li><a href="#" class="link-compare">Add to
																Compare</a></li>
														<li><a href="detail/${t.id}.htm" class="link-cart">Add to
																Cart</a></li>
													</ul>
												</div>
											</div>
											<div class="des-container">
												<h2 class="product-name">
													<a href="detail/${t.id}.htm" title="Nunc facilisis">${t.name }</a>
												</h2>
												<div class="price-box">
													<p class="special-price">
														<span class="price-label">Special Price</span> <span
															class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${t.price}" /> Đ</span>
													</p>
													<p class="old-price">
														<span class="price-label">Regular Price: </span> <span
															class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${t.gianhap}" /> Đ</span>
													</p>
												</div>
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 67%"></div>
													</div>
													<span class="amount"><span> <fmt:formatDate
																value="${t.createDate }" pattern="HH:mm dd-MM-yyyy" />
													</span> </span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<a href="javascript:void(0);" id="scroll" title="Scroll to Top"
		style="display: none;">Top<span></span></a>
</body>
</html>