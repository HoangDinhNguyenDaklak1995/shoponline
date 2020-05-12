<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/blog.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<jsp:include page="./include/themehead.jsp" />
<title>Oean Shoppe-Trang web bán hàng trực tuyến</title>
<link href="./css/theme.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="./include/banner.jsp"></jsp:include>
	<br>
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="homebanner">
					<div id="sync1">
						<div class="item">
							<a
								href='https://www.thegioididong.com/dtdd/samsung-galaxy-note-fe'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16482&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								src='//cdn2.tgdd.vn/qcao/10_11_2017_16_58_59_Samsung-Note-FE-800-300.png'
								alt='2017 - T11 - Galaxy Note FE' /></a>
						</div>
						<div class="item">
							<a href='https://www.thegioididong.com/tra-gop/home-credit'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=15964&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn4.tgdd.vn/qcao/30_10_2017_10_00_40_HC-Tra-Gop-800-300.png'
								alt='2017 - T11 - Tra Gop HC' /></a>
						</div>
						<div class="item">
							<a href='https://www.thegioididong.com/dtdd/oppo-f5'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16219&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn4.tgdd.vn/qcao/10_11_2017_16_25_39_Launching-Oppo-F5-800-300.png'
								alt='2017 - T11 - Oppo F5' /></a>
						</div>
						<div class="item">
							<a href='https://www.thegioididong.com/apple'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16447&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn2.tgdd.vn/qcao/10_11_2017_10_18_01_iphone-big-800-300.png'
								alt='2017 - T11 - Apple Big' /></a>
						</div>
						<div class="item">
							<a href='https://www.thegioididong.com/loa-laptop'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16017&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn2.tgdd.vn/qcao/31_10_2017_00_44_51_phu-kien-loa-blu-800-300.png'
								alt='2017 - T11 - PK Chung' /></a>
						</div>
						<div class="item">
							<a href='https://www.thegioididong.com/dtdd-motorola'
								onclick="jQuery.ajax({ url: '//www.thegioididong.com/bannertracking?bid=16428&r='+ (new Date).getTime(),   async: true, cache: false });"><img
								class='lazyOwl'
								data-src='//cdn3.tgdd.vn/qcao/09_11_2017_14_54_35_Moto-X4-800-300.png'
								alt='2017 - T11 - Motorola Flash Sale' /></a>
						</div>
						<div class="item">
							<a
								href='https://www.thegioididong.com/dtdd/mobiistar-zumbo-s2-dual'
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
					<figure> <b></b> <a href="/tin-tuc" class="readmore">Đọc
						thêm</a> </figure>
					<ul>
						<li><a
							href="/tin-tuc/smartphone-gia-re-nao-hop-voi-sinh-vien-thich-phuot-selfie-1040313">
								<img width="100" height="70"
								src="https://cdn3.tgdd.vn/Files/2017/11/10/1040313/mobi_800x450-100x100.jpg">
								<h3>Smartphone gi&#225; rẻ n&#224;o ph&#249; hợp cho sinh
									vi&#234;n th&#237;ch “phượt” v&#224; selfie?</h3> <span>28
									ph&#250;t trước</span>
						</a></li>
						<li><a
							href="/tin-tuc/tong-hop-loat-meo-hay-hap-dan-tren-android-va-ios-tuan-qua-1040684">
								<img width="100" height="70"
								src="https://cdn4.tgdd.vn/Files/2017/11/12/1040684/anhbia_800x476-100x100.jpg">
								<h3>Tổng hợp loạt mẹo hay hấp dẫn tr&#234;n Android v&#224;
									iOS tuần qua</h3> <span>53 ph&#250;t trước</span>
						</a></li>
						<li><a
							href="/tin-tuc/galaxy-s9-se-trang-bi-nhieu-cam-bien-moi-ket-noi-iot-1040671">
								<img width="100" height="70"
								src="https://cdn1.tgdd.vn/Files/2017/11/12/1040671/fa_1280x720-100x100.jpg">
								<h3>Tin đồn: Galaxy S9 sẽ trang bị cảm biến mới, n&#226;ng
									cao khả năng kết nối IoT*</h3> <span>1 giờ trước</span>
						</a></li>
					</ul>
				</div>
				<script defer="defer"
					src="https://cdn4.tgdd.vn/v2015/Scripts/desktop/V4/home.min.v201711060430.js"></script>
			</div>
			<!-- /advertisement -->
			<br>
			<div class="row">
				<div class="col-sm-3 col-left">
					<div class="menu-recent block">
						<div class="title-group">
							<h2>Latest News</h2>
						</div>
						<div id="latest-news" class="owl-container">
							<div class="owl">
								<div>
									<div class="item-inner">
										<div class="images-container">
											<a href="#"> <img alt=""
												src="theme/images/blog/blog-01.jpg" />
											</a>
										</div>
										<div class="des-container">
											<div class="date-comments">
												<div class="time">
													<span class="date">August 04, 2015</span>
												</div>
											</div>
											<div class="des">
												<h4>
													<a href="#" class="title-blog"><span>swimwear
															for women</span></a>
												</h4>
												Lorem Ipsum is that it has a more-or-less normal
												distribution of letters, as opposed to using...
											</div>
										</div>
									</div>
								</div>
								<div>
									<div class="item-inner">
										<div class="images-container">
											<a href="#"> <img alt=""
												src="theme/images/blog/blog-02.jpg" />
											</a>
										</div>
										<div class="des-container">
											<div class="date-comments">
												<div class="time">
													<span class="date">January 05, 2015</span>
												</div>
											</div>
											<div class="des">
												<h4>
													<a href="#" class="title-blog"><span>Burberry
															sport for men</span></a>
												</h4>
												Lorem Ipsum is that it has a more-or-less normal
												distribution of letters, as opposed to using...
											</div>
										</div>
									</div>
								</div>
								<div>
									<div class="item-inner">
										<div class="images-container">
											<a href="#"> <img alt=""
												src="theme/images/blog/blog-01.jpg" />
											</a>
										</div>
										<div class="des-container">
											<div class="date-comments">
												<div class="time">
													<span class="date">August 04, 2015</span>
												</div>
											</div>
											<div class="des">
												<h4>
													<a href="#" class="title-blog"><span>swimwear
															for women</span></a>
												</h4>
												Lorem Ipsum is that it has a more-or-less normal
												distribution of letters, as opposed to using...
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.timely -->
					<div class="block">
						<div class="title-group">
							<h2>nổi bật</h2>
						</div>
						<c:forEach var="t" items="${loadproduct }" varStatus="status">
							<c:set var="dem" value="${status.index + 1 }"></c:set>
							<c:choose>
								<c:when test="${currentpage > 1 }">
									<c:set var="dem"
										value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
								</c:when>
							</c:choose>
							<div id="special-offer" class="owl-container">
								<div class="owl">
									<div class='sepecialoffer-item item'>
										<div class="item-inner first">
											<div class="images-container">
												<a href="#" title="Primis in faucibus" class="product-image">
													<img src="files/tintuc/${t.img1 }" alt="Primis in faucibus" />
												</a>
											</div>
											<div class="des-container">
												<h2 class="product-name">
													<a href="#" title="Primis in faucibus">${t.name }</a>
												</h2>
												<div class="price-box">
													<p class="special-price">
														<span class="price">${t.price }</span>
													</p>
													<p class="old-price">
														<span class="price">${t.gianhap }</span>
													</p>
												</div>
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 87%"></div>
													</div>
													<span class="amount"><a href="#">1 Review(s)</a></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
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
								<div class='testimonial-list'>
									<div class="testimonial-sidebar-content">
										<div class="content">
											<a href="#">Thích...</a>
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
								<div class='testimonial-list'>
									<div class="testimonial-sidebar-content">
										<div class="content">
											<a href="#">Duis autem vel eum iriure dolor in hendrerit
												in vulputate velit esse molestie consequat, vel illum dolore
												eu feugiat nulla facilisis at vero eros et...</a>
										</div>
										<div class="post-by">
											<div class="testimonial-content-avatar">
												<img src="theme/images/avatar/avatar-02.jpg" alt="test" />
											</div>
											<div class="box-author">
												<span class="testimonial-author">Nguyễn Đình Hoàng</span> <span
													class="testimonial-date">DakLak,VietNam</span>
											</div>
										</div>
									</div>
								</div>
								<div class='testimonial-list'>
									<div class="testimonial-sidebar-content">
										<div class="content">
											<a href="#">Duis autem vel eum iriure dolor in hendrerit
												in vulputate velit esse molestie consequat, vel illum dolore
												eu feugiat nulla facilisis at vero eros et... </a>
										</div>
										<div class="post-by">
											<div class="testimonial-content-avatar">
												<img src="theme/images/avatar/avatar-03.jpg" alt="test" />
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
						
						
					</div>
					<div class="newproductslider-container">
						<div class="title-group1">
							<h2>Sản phẩm </h2>
						</div>
						<div id="new-products" class="owl-container">
							<div class="owl">
								<c:forEach var="u" items="${loadproduct }"
									varStatus="status">
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
														<span>new</span>
													</div>
													<div class="sale-icon">
														<span>S ${u.price } %</span>
													</div>
												</div>
												<a href="detail/${u.id }.htm" title="Nunc facilisis"
													class="product-image"> <img style="height: 250px;"
													src="files/tintuc/${u.img }"
													alt="Nunc facilisis" />
												</a>
												<div class="box-hover">
													<ul class="add-to-links">
														<li><a href="#" class="link-quickview">Quick View</a></li>
														<li><a href="#" class="link-wishlist">Add to
																Wishlist</a></li>
														<li><a href="#" class="link-compare">Add to
																Compare</a></li>
														<li><a href="detail.htm" class="link-cart">Add to
																Cart</a></li>
													</ul>
												</div>
											</div>
											<div class="des-container">
												<h2 class="product-name">
													<a href="detail/${u.id }.htm" title="Nunc facilisis">${u.name }</a>
												</h2>
												<div class="price-box">
													<p class="special-price">
														<span class="price-label">Special Price</span> <span
															class="price">${u.price }</span>
													</p>
													<p class="old-price">
														<span class="price-label">Regular Price: </span> <span
															class="price">${u.gianhap }</span>
													</p>
												</div>
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 10%"></div>
													</div>
													<span class="amount"><a href="#">Khuyến
															mãi:${u.saleprice }%</a></span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="banner" style="margin-bottom: -10px;"></div>
					

				</div>
				<!-- /.col-right -->
			</div>
		</div>

	</div>
	<a href="javascript:void(0);" id="scroll" title="Scroll to Top"
		style="display: none;">Top<span></span></a>
</body>
<script type='text/javascript'>
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 100) {
				$('#scroll').fadeIn();
			} else {
				$('#scroll').fadeOut();
			}
		});
		$('#scroll').click(function() {
			$("html, body").animate({
				scrollTop : 0
			}, 600);
			return false;
		});
	});
</script>
<style type="text/css">
/* BackToTop button css */
#scroll {
	position: fixed;
	right: 10px;
	bottom: 10px;
	cursor: pointer;
	width: 50px;
	height: 50px;
	background-color: #3498db;
	text-indent: -9999px;
	display: none;
	-webkit-border-radius: 60px;
	-moz-border-radius: 60px;
	border-radius: 60px
}

#scroll span {
	position: absolute;
	top: 50%;
	left: 50%;
	margin-left: -8px;
	margin-top: -12px;
	height: 0;
	width: 0;
	border: 8px solid transparent;
	border-bottom-color: #ffffff
}

#scroll:hover {
	background-color: #e74c3c;
	opacity: 1;
	filter: "alpha(opacity=100)";
	-ms-filter: "alpha(opacity=100)";
}
</style>
</html>