<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Trang tin tức</title>
</head>
<body>
<div class="container">
		<div class="row">
			<div id="cssmenu">
				<ul>
					<c:forEach var="ty" items="${danhmuctintuc }">
						<c:if test="${ty.subcategory == 0 }">
							<li><a href="tintuc/${ty.url }/${ty.id }.htm">${ty.name }</a></li>
						</c:if>
					</c:forEach>
					<li><a href="tintuc.htm">Xem thêm</a></li>
				</ul>
			</div>
		</div>
	</div>
<div class="w3-content w3-display-container">
<c:forEach var="n" items="${News }" varStatus="status">
  <img class="mySlides" src="files/tintuc/${n.img }" style="width:1200px;height: 500px;margin-left: -80px;">
  <div class="w3-display-bottomleft w3-container w3-padding-16 w3-black">
    <a href="http://localhost:8080/duan/${n.categorys.url }/${n.link }/${n.id }.htm">${n.title }</a>
  </div>
  </c:forEach>
  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
	<br>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<div class="container">
		
		<section id="contentSection">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8">
					<div class="left_content">
						<div class="single_post_content">
							<h2>
								<span>Tin trong ngày</span>
							</h2>
							<div class="single_post_content_left">
								<ul class="business_catgnav  wow fadeInDown">
									<c:forEach var="tc" items="${News}">
										<c:set var="dem" value="${status.index + 1 }"></c:set>
										<c:choose>
											<c:when test="${currentpage > 1 }">
												<c:set var="dem"
													value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
											</c:when>
										</c:choose>
										<li>
											<figure class="bsbig_fig" style="width: 200%">
												<a
													href="http://localhost:8080/duan/${tc.categorys.url }/${tc.link }/${tc.id }.htm"
													class="featured_img"> <img
													style="width: 700px; height: 300px;" alt=""
													src="files/tintuc/${tc.img }"> <span class="overlay"></span>
												</a>
												<br>
												<div class="blog-attr">
													<span class="comment-tag"><i class="fa fa-eye">
													</i>${tc.views }<i></i></span><a></a>
													<c:forEach var="us" items="${listuser }">
														<c:if test="${us.id == tc.idusermodify }">
															<span>Đăng bởi: <a>${us.fullname }</a></span>
														</c:if>
													</c:forEach>
													<span class="separator">|</span> <span><fmt:formatDate
															value="${tc.createdate }" pattern="dd-MM-yyyy" /></span>
												</div>
												<figcaption>
													<a
														href="http://localhost:8080/duan/${tc.categorys.url }/${tc.link }/${tc.id }.htm">
														${tc.title  }</a>
												</figcaption>
												<p>${tc.sum_content  }</p>
											</figure>
										</li>
									</c:forEach>
								</ul>


							</div>
						</div>
					</div>
					<nav>
						<ul class="pagination">
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
				<div class="col-lg-4 col-md-4 col-sm-4">
					<aside class="right_content">
						<div class="single_sidebar">
							<h2>
								<span>Tin nổi bật</span>
							</h2>
							<ul class="spost_nav">
								<li><c:forEach var="n" items="${News }" varStatus="status">
								<c:set var="dem" value="${status.index + 1 }"></c:set>
										<c:choose>
											<c:when test="${currentpage > 1 }">
												<c:set var="dem"
													value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
											</c:when>
										</c:choose>
										<div class="media">
											<a
												href="http://localhost:8080/duan/${n.categorys.url }/${n.link }/${n.id }.htm"
												class="media-left"> <img
												style="border: 1px solid #f5f5f5;" alt=""
												src="files/tintuc/${n.img }">
											</a>
											<div class="media-body">
												<a
													href="http://localhost:8080/duan/${n.categorys.url }/${n.link }/${n.id }.htm"
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
						<div class="single_sidebar">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#category"
									aria-controls="home" role="tab" data-toggle="tab">Category</a></li>
								<li role="presentation"><a href="#video"
									aria-controls="profile" role="tab" data-toggle="tab">Video</a></li>
							</ul>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="category">
									<ul>
										<c:forEach var="ty" items="${danhmuctintuc }">
											<c:if test="${ty.subcategory == 0 }">
												<li><a href="tintuc/${ty.url }/${ty.id }.htm">${ty.name }</a></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								<div role="tabpanel" class="tab-pane" id="video">
									<div class="vide_area">
										<iframe width="100%" height="250"
											src="http://www.youtube.com/embed/h5QWbURNEpA?feature=player_detailpage"
											frameborder="0" allowfullscreen></iframe>
									</div>
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>
		</section>
	</div>
</body>
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
	border-bottom: 3px solid #000;
	font-family: Raleway, sans-serif;
	line-height: 1;
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
	color: black;
	-webkit-transition: all .2s ease;
	-moz-transition: all .2s ease;
	-ms-transition: all .2s ease;
	-o-transition: all .2s ease;
	transition: all .2s ease;
	margin-right: -4px;
}

#cssmenu>ul>li.active>a, #cssmenu>ul>li:hover>a, #cssmenu>ul>li>a:hover
	{
	color: blue;
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
	background: #fff;
}
</style>

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
<style>
.nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus
	{
	background-color: gray;
}
</style>
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
</html>