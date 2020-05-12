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
<script type="text/javascript">
	$(document).ready(function() {

		var defaults = {
			containerID : 'toTop', // fading element id
			containerHoverID : 'toTopHover', // fading element hover id
			scrollSpeed : 1200,
			easingType : 'linear'
		};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
</head>
<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
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
							<span> Kết quả trả về tìm kiếm</span>
						</h3>
					</div>
					<div class="toolbar">
						<div class="sorter">
							<p class="view-mode">
								<label>View as:</label> <strong class="grid" title="Grid">Grid</strong>&nbsp;
								<a class="list" title="List" href="#">List</a>&nbsp;
							</p>
						</div>
						<!-- /.sorter -->
						<div class="pager">
						</div>
					</div>
					<!-- /.toolbar -->
					<div class="row products">
						<c:forEach var="tc" items="${sanphamsearch}">
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
													<span>new</span>
												</div>
											</div>
											<a href="detail/${tc.id}.htm"
												title="Nunc facilisis" class="product-image" style="margin-top: -95px;"> <img
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
												<span class="amount"><a>3 Review(s)</a></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
						<nav>
						<ul class="pagination" style="margin-left: 300px;">
							<c:if test="${currentpage > 1  }">
								<li ><a
									href="index.htm?page=${currentpage -1 }"
									aria-label="Previous">Prev</a></li>
							</c:if>
							<c:forEach begin="1" end="${pagecount }" varStatus="status">
								<c:choose>
									<c:when test="${status.index == currentpage }">
										<li class="divider"><span>|</span></li>
										<li><a href="index.htm?page=${status.index }">${status.index }</a></li>
										<li class="divider"><span>|</span></li>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${currentpage < pagecount }">
								<li><a href="tintuc.htm?page=${currentpage +1 }" aria-label="Next">Next</a></li>
							</c:if>
						</ul>
					</nav>
					<div class="row products">
						<c:forEach var="n" items="${newssearch}">
							<c:set var="dem" value="${status.index + 1 }"></c:set>
							<c:choose>
								<c:when test="${currentpage1 > 1 }">
									<c:set var="dem"
										value="${status.index + pagesize1 * (currentpage1 -1) +1 }"></c:set>
								</c:when>
							</c:choose>
					<div class="item-inner">
										<div class="images-container" style="margin-top: -200px;">
											<a href="http://localhost:8080/duan/${n.categorys.url }/${n.link }/${n.id }.htm"> 
											<img alt="" style="width: 300px;height:100px; border: 1px solid #f5f5f5;"
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
						</c:forEach>
					</div>
					<nav>
						<ul class="pagination" style="margin-left: 300px;">
							<c:if test="${currentpage1 > 1  }">
								<li ><a
									href="index.htm?page=${currentpage1 -1 }"
									aria-label="Previous">Prev</a></li>
							</c:if>
							<c:forEach begin="1" end="${pagecount1 }" varStatus="status">
								<c:choose>
									<c:when test="${status.index == currentpage1 }">
										<li class="divider"><span>|</span></li>
										<li><a href="index.htm?page=${status.index }">${status.index }</a></li>
										<li class="divider"><span>|</span></li>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${currentpage1 < pagecount1 }">
								<li><a href="tintuc.htm?page=${currentpage1 +1 }" aria-label="Next">Next</a></li>
							</c:if>
						</ul>
					</nav>
					<!-- /.product -->
				</div>
				<!-- /.col-right -->
			</div>
		</div>
	</div>
</body>
</html>