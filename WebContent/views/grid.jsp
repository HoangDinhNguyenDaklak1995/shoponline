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
<link href="theme/css/bootstrap.min.css" rel="stylesheet">
<link href="theme/css/animate.css" rel="stylesheet">
<link href="theme/css/owl.carousel.css" rel="stylesheet">
<link href="theme/css/jquery-ui.css" rel="stylesheet">
<link href="theme/css/style.css" rel="stylesheet">
<link href="theme/css/responsive.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oswald'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<title>Oean Shoppe-Trang web bán hàng trực tuyến</title>
<link href="./css/theme.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="header">
		<div class="topbar">
			<div class="container">
				<div class="topbar-left">
					<ul class="topbar-nav clearfix">
						<li><a href="index.htm" class="phone">Trang chủ</a></li>
						<li><span class="email">Trang thông tin sản phẩm</span></li>
					</ul>
				</div>
			</div>
			<!-- /.container -->
		</div>
		<!-- /.topbar -->
	</div>
	<!-- /.header -->
	<br>
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-left">
					<div class="block block-layered-nav">
						<div class="block-title">
							<strong><span>Sắp xếp theo</span></strong>
						</div>
						<div class="block-content">
							<p class="block-subtitle">Shopping Options</p>
							<div id="narrow-by-list">
								<div class="layered layered-Category">
									<h2>Danh mục</h2>
									<div class="content-shopby">
										<ol>
											<c:forEach var="d" items="${danhmucsanpham }">
												<c:if test="${d.subcategoryproduct == 0 }">
													<li><a href="${d.url }/${d.id }.htm">${d.name }</a></li>
												</c:if>
											</c:forEach>
										</ol>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- /sort -->
					<div class="banner-left">
						<a href="#"><img src="theme/images/ads/ads-01.jpg" alt=""></a>
						<div class="banner-content">
							<h1>sale up to</h1>
							<h2>20% off</h2>
							<p>on selected products</p>
							<a href="#">buy now</a>
						</div>
					</div>
				</div>
				<!-- /.col-left -->
				<div class="col-sm-9 col-right">
					<div class="page-title">
						<h3>
							<span style="text-transform: uppercase;">${cate.name }</span>
						</h3>
					</div>
					<div class="toolbar">
						<div class="sorter">
							<p class="view-mode">
								<label>View as:</label> <strong class="grid" title="Grid">Grid</strong>&nbsp;
							</p>
						</div>
						<!-- /.sorter -->
						<div class="pager">
							<div class="sort-by hidden-xs">
								 <a title="Set Descending Direction" href="#"></a>
							</div>
						</div>
						<!--- /.pager -->
					</div>
					<!-- /.toolbar -->
					<div class="row products">
						<c:forEach var="tc" items="${tintuccate}">
							<c:set var="dem" value="${status.index + 1 }"></c:set>
							<c:choose>
								<c:when test="${currentpage > 1 }">
									<c:set var="dem"
										value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
								</c:when>
							</c:choose>
							<div class="col-md-3 col-sm-6">
								<div class='productslider-item item'>
									<div class="item-inner">
										<div class="theme/images-container">
											<div class="product_icon">
												<div class='new-icon'>
													<span>Mới</span>
												</div>
											</div>
											<a href="detail/${tc.id}.htm"
												title="Nunc facilisis" class="product-image"style="margin-top: -95px;"> <img
												style="height: 250px;" src="files/sanpham/${tc.img }"
												alt="Nunc facilisis" />
											</a>
										</div>
										<div class="des-container">
											<h2 class="product-name">
												<a href="detail/${tc.id}.htm"
													title="Nunc facilisis">${tc.name }</a>
											</h2>
											<div class="price-box">
												<p class="special-price">
													<span class="price-label">Special Price</span> <span
														class="price">${tc.price }</span>
												</p>
												<p class="old-price">
													<span class="price-label">Regular Price: </span> <span
														class="price">${tc.gianhap }</span>
												</p>
											</div>
											<div class="ratings">
												<div class="rating-box">
													<div class="rating" style="width: 67%"></div>
												</div>
												<span class="amount"><a href="#">3 Review(s)</a></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				
				</div>
				<!-- /.col-right -->
			</div>
		</div>
	</div>
	<!-- /.main -->
</body>
</html>