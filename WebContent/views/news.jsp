<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Tin tức Shoppe</title>
<link href="theme/css/bootstrap.min.css" rel="stylesheet">
<link href="theme/css/animate.css" rel="stylesheet">
<link href="theme/css/owl.carousel.css" rel="stylesheet">
<link href="theme/css/style.css" rel="stylesheet">
<link href="theme/css/responsive.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="./include/menutintuc.jsp"></jsp:include>
	<br>
	<div class="main">
		<div class="container">
			<div class="row">
				<section id="contentSection">
					<div class="row">
						<div class="col-lg-8 col-md-8 col-sm-8">
							<div class="col-sm-12">
							<div class="container">
													<div class="row">
														<div id="cssmenu">
															<ul>
																<li class="active"><a href="tintuc.htm">Xem
																		thêm </a></li>
															</ul>
														</div>
													</div>
												</div>
								<ol id="products-list" class="blog-list">
									<c:forEach var="tc" items="${newscate}">
										<c:set var="dem" value="${status.index + 1 }"></c:set>
										<c:choose>
											<c:when test="${currentpage > 1 }">
												<c:set var="dem"
													value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
											</c:when>
										</c:choose>
										<li class="item">
											<div class="item-inner">
												
												<br>
												<div class="row">
													<div class="col-sm-5">
														<div class="theme/images-container">
															<a class="product-image" title="Fusce aliquam"
																href="http://localhost:8080/duan/${tc.categorys.url }/${tc.title }/${tc.id }.htm"
																rel="author"><img alt="Fusce aliquam"
																style="width: 100%; height: 250px; border: 1px solid #f5f5f5f5;"
																src="files/tintuc/${tc.img }"></a>
														</div>
													</div>
													<div class="col-sm-7">
														<h2 class="product-name">
															<a title=""
																href="http://localhost:8080/duan/${tc.categorys.url }/${tc.title }/${tc.id }.htm">${tc.title }</a>
														</h2>
														<div class="ratings">
															<div class="rating-box">
																<div style="width: 67%" class="rating"></div>
															</div>
															<span class="comment-tag"><i class="fa fa-eye">
															</i>${tc.views }<i></i></span> <span class="separator">|</span> <span
																class="comment-amount"><a>4 comment</a></span>
														</div>
														<div class="blog-attr">
															<c:forEach var="us" items="${listuser }">
																<c:if test="${us.id == tc.idusermodify }">
																	<span>Đăng bởi: <a>${us.fullname }</a></span>
																</c:if>
															</c:forEach>
															<span class="separator">|</span> <span><fmt:formatDate
																	value="${tc.createdate }" pattern="dd-MM-yyyy" /></span>
														</div>
														<div class="desc">${tc.sum_content }</div>
														<a
															href="http://localhost:8080/duan/${tc.categorys.url }/${tc.title }/${tc.id }.htm"
															class="btn btn-default btn-readmore">Xem thêm</a>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ol>
								<nav>
									<ul class="pagination" style="margin-left: 300px;">
										<c:if test="${currentpage > 1  }">
											<li><a href="tintuc.htm?page=${currentpage -1 }"
												aria-label="Previous">Prev</a></li>
										</c:if>
										<c:forEach begin="1" end="${pagecount }" varStatus="status">
											<c:choose>
												<c:when test="${status.index == currentpage }">
													<li class="divider"><span>|</span></li>
													<li><a href="tintuc.htm?page=${status.index }">${status.index }</a></li>
													<li class="divider"><span>|</span></li>
												</c:when>
											</c:choose>
										</c:forEach>
										<c:if test="${currentpage < pagecount }">
											<li><a href="tintuc.htm?page=${currentpage +1 }"
												aria-label="Next">Next</a></li>
										</c:if>
									</ul>
								</nav>
							</div>

						</div>
						<div class="col-lg-4 col-md-4 col-sm-4">
							<aside class="right_content">
								<div class="single_sidebar">
									<h2>
										<span>Tin nổi bật</span>
									</h2>
									<ul class="spost_nav">
										<li><c:forEach var="n" items="${newscate }"
												varStatus="status">
												<c:set var="dem" value="${status.index + 1 }"></c:set>
												<c:choose>
													<c:when test="${currentpage > 1 }">
														<c:set var="dem"
															value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
													</c:when>
												</c:choose>
												<div class="media">
													<a
														href="http://localhost:8080/duan/${n.categorys.url }/${n.title }/${n.id }.htm"
														class="media-left"> <img
														style="border: 1px solid #f5f5f5;" alt=""
														src="files/tintuc/${n.img }">
													</a>
													<div class="media-body">
														<a
															href="http://localhost:8080/duan/${n.categorys.url }/${n.title }/${n.id }.htm"
															class="catg_title"> ${n.title } </a>
													</div>
												</div>
											</c:forEach></li>
									</ul>
									<nav>
										<ul class="pagination" style="display: none;">
											<c:if test="${currentpage > 1  }">
												<li><a href="tintuc.htm?page=${currentpage -1 }"
													aria-label="Previous">Prev</a></li>
											</c:if>
											<c:forEach begin="1" end="${pagecount }" varStatus="status">
												<c:choose>
													<c:when test="${status.index == currentpage }">
														<li class="divider"><span>|</span></li>
														<li><a href="tintuc.htm?page=${status.index }">${status.index }</a></li>
														<li class="divider"><span>|</span></li>
													</c:when>
												</c:choose>
											</c:forEach>
											<c:if test="${currentpage < pagecount }">
												<li><a href="tintuc.htm?page=${currentpage +1 }"
													aria-label="Next">Next</a></li>
											</c:if>
										</ul>
									</nav>
								</div>
							</aside>
							<img width="340" height="397" alt="banner-sidebar-1"
								class="attachment-full" style="max-width: 100%;"
								src="http://lienminh360.vn/wp-content/uploads/2017/11/san-laptop-298x397.png"><br>
							<br>
							<div class="fb-page"
								data-href="https://www.facebook.com/nguyencongtahng/"
								data-tabs="timeline" data-width="350" data-height="300"
								data-small-header="true" data-adapt-container-width="false"
								data-hide-cover="false" data-show-facepile="true">
								<blockquote cite="https://www.facebook.com/nguyencongtahng/"
									class="fb-xfbml-parse-ignore">
									<a href="https://www.facebook.com/nguyencongtahng/">Ocean
										Shoppe</a>
								</blockquote>
							</div>
						</div>

						<script type="text/javascript">
							function hide_float_right() {
								var content = document
										.getElementById('float_content_right');
								var hide = document
										.getElementById('hide_float_right');
								if (content.style.display == "none") {
									content.style.display = "block";
									hide.innerHTML = '<a href="javascript:hide_float_right()">Tắt quảng cáo [X]</a>';
								} else {
									content.style.display = "none";
									hide.innerHTML = '<a href="javascript:hide_float_right()">Xem quảng cáo...</a>';
								}
							}
						</script>
						<br />
						<div class="float-ck" style="right: 0px;">
							<div id="hide_float_right">
								<a href="javascript:hide_float_right()">Tắt Quảng Cáo [X]</a>
							</div>
							<div id="float_content_right">
								<!-- Start quang cao-->
								<a href="http://www.windows2it.com/"><img
									alt="Quảng cáo trên windows2it.com"
									src="https://cdn.adf.ly/images/banners/adfly.300x250.1.gif" /></a>
								<!-- End quang cao -->
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=117453615599820';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<!-- /.main -->
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="theme/js/owl.carousel.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			/* recent-post slider */
			$("#recent-post .owl").owlCarousel({
				autoPlay : false,
				items : 1,
				itemsDesktop : [ 1199, 1 ],
				itemsDesktopSmall : [ 991, 1 ],
				itemsTablet : [ 767, 2 ],
				itemsMobile : [ 480, 1 ],
				slideSpeed : 3000,
				paginationSpeed : 3000,
				rewindSpeed : 3000,
				navigation : true,
				stopOnHover : true,
				pagination : false,
				scrollPerPage : true,
			});
		});
	</script>
</body>
<style>
.float-ck {
	position: fixed;
	bottom: 0px;
	z-index: 9000
}

* html .float-ck {
	position: absolute;
	bottom: auto;
	top: expression(eval ( document.documentElement.scrollTop + document.docum
		entElement.clientHeight-this.offsetHeight- ( parseInt(this.currentStyle.marginTop
		, 10)||0)-(parseInt(this.currentStyle.marginBottom, 10)||0)));
}

#float_content_right {
	border: 1px solid #01AEF0;
	width: 300px;
	height: 250px;
}

#hide_float_right {
	text-align: right;
	font-size: 11px;
}

#hide_float_right a {
	background: #01AEF0;
	padding: 2px 4px;
	color: #FFF;
}
</style>
<style>
@import url(http://fonts.googleapis.com/css?family=Raleway);

#cssmenu, #cssmenu ul, #cssmenu ul li, #cssmenu ul li a {
	margin: 0;
	padding: 0;
	border: 0;
	list-style: none;
	line-height: 1;
	display: block;
	position: relative;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

#cssmenu:after, #cssmenu>ul:after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0;
}

#cssmenu {
	width: auto;
	border-bottom: 3px solid grey;
	font-family: Raleway, sans-serif;
	line-height: 1;
	width: 750px;
}

#cssmenu ul {
	background: #ffffff;
}

#cssmenu>ul>li {
	float: left;
}

#cssmenu.align-center>ul {
	font-size: 0;
	text-align: center;
}

#cssmenu.align-center>ul>li {
	display: inline-block;
	float: none;
}

#cssmenu.align-right>ul>li {
	float: right;
}

#cssmenu.align-right>ul>li>a {
	margin-right: 0;
	margin-left: -4px;
}

#cssmenu>ul>li>a {
	z-index: 2;
	padding: 18px 25px 12px 25px;
	font-size: 15px;
	font-weight: 400;
	text-decoration: none;
	color: #2467A6;
	-webkit-transition: all .2s ease;
	-moz-transition: all .2s ease;
	-ms-transition: all .2s ease;
	-o-transition: all .2s ease;
	transition: all .2s ease;
	margin-right: -4px;
}

#cssmenu>ul>li.active>a, #cssmenu>ul>li:hover>a, #cssmenu>ul>li>a:hover
	{
	color: #ffffff;
}

#cssmenu>ul>li>a:after {
	position: absolute;
	left: 0;
	bottom: 0;
	right: 0;
	z-index: -1;
	width: 100%;
	height: 120%;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	content: "";
	-webkit-transition: all .3s ease;
	-o-transition: all .3s ease;
	transition: all .3s ease;
	-webkit-transform: perspective(5px) rotateX(2deg);
	-webkit-transform-origin: bottom;
	-moz-transform: perspective(5px) rotateX(2deg);
	-moz-transform-origin: bottom;
	transform: perspective(5px) rotateX(2deg);
	transform-origin: bottom;
}

#cssmenu>ul>li.active>a:after, #cssmenu>ul>li:hover>a:after, #cssmenu>ul>li>a:hover:after
	{
	background: grey;
}
</style>
</html>