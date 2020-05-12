<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Intro store</title>
<script type="text/javascript" src="admin/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<script src="admin/js/jquery.vide.min.js"></script>
<link rel="stylesheet" href="admin/css/bootstrap.css">
<link href='http://fonts.googleapis.com/css?family=Great+Vibes'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="site-wrapper video-background" data-vide-bg="video/chotot">
		
		<div class="overlay"></div>
		<div class="site-wrapper-inner">
			<div class="cover-container">
				<div class="inner cover">
					<h1 class="cover-heading">Shop mua sắm số 1 Việt Nam</h1>
					<p class="lead">
						<a type="button" href="index.htm" class="btn btn-default">TRANG
							CHỦ</a>
					</p>
				</div>
				<div class="mastfoot">
					<div class="inner">
					</div>
				</div>
			</div>
		</div></div>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="js/device.min.js"></script>
	<script src="js/jquery.mb.YTPlayer.js"></script>
	<script src="js/custom.js"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-1057679-2', 'auto');
		ga('send', 'pageview');
	</script>
</body>
<style type="text/css">
a, a:focus, a:hover {
	color: #fff;
	transition: 0.2s;
	-moz-transition: 0.2s;
	s -webkit-transition: 0.2s;
	-o-transition: 0.2s;
}

a:focus, a:hover {
	opacity: .7;
	text-decoration: none;
}
/* Custom default button */
.btn-default, .btn-default:hover, .btn-default:focus {
	color: #fff;
	text-shadow: none;
	background-color: transparent;
	border: 1px solid #fff;
	border-radius: 2px;
}

/*
 * Base structure
 */
html, body {
	height: 100%;
	background-color: #000;
}

body {
	font-family: Roboto, sans-serif;
	color: #fff;
	text-align: center;
	text-shadow: 0 1px 3px rgba(0, 0, 0, .5);
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
	display: table;
	width: 100%;
	height: 100%;
	min-height: 100%;
}

.site-wrapper-inner {
	display: table-cell;
	vertical-align: top;
	position: relative;
}

.cover-container {
	margin-right: auto;
	margin-left: auto;
}

/* Padding for spacing */
.inner {
	padding: 30px;
}

/*
 * Header
 */
.masthead-nav>li, .masthead-brand>li {
	display: inline-block;
}

.masthead-nav>li+li, .masthead-brand>li+li {
	margin-left: 20px;
}

.masthead-nav>li>a, .masthead-brand>li>a {
	padding-right: 0;
	padding-left: 0;
	font-size: 28px;
	font-weight: bold;
	color: #fff;
}

.masthead-nav>li>a:hover, .masthead-nav>li>a:focus, .masthead-brand>li>a:hover,
	.masthead-brand>li>a:focus {
	background-color: transparent;
	color: #fff;
}

.masthead a {
	text-decoration: none;
}

@media ( min-width : 768px) {
	.masthead-brand {
		float: left;
	}
	.masthead-nav {
		float: right;
	}
}

/* VIDEO BACKGROUND */
.video-background {
	z-index: 550;
	text-align: center;
	height: 100%;
	min-height: 100%;
	position: relative;
	overflow: hidden
}

.video-background .video-background-container {
	width: 830px;
	max-width: 100%;
	display: inline-block;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%)
}

.video-background-title {
	font-size: 78px;
	color: #fff;
	font-weight: 300;
	text-transform: uppercase;
	text-align: center;
	margin-bottom: 22px;
	padding-top: 20px;
	display: inline-block;
	background-attachment: scroll;
	background-repeat: repeat-x;
	background-position: top center
}

.video-background-default-image {
	background: url(img/cover.jpg);
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	width: 100%;
	height: 100%;
	z-index: 0;
	backface-visibility: hidden
}

.overlay {
	background: rgba(0, 0, 0, 0.4);
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
}

/*
 * Cover
 */
.cover {
	padding: 0 20px;
}

.cover .btn-lg {
	padding: 15px 50px;
	font-weight: bold;
}

.cover-heading {
	font-family: "Great Vibes", serif;
	font-size: 60px;
	transform: rotate(-6deg);
	-ms-transform: rotate(-6deg);
	-moz-transform: rotate(-6deg);
	-webkit-transform: rotate(-6deg);
	-o-transform: rotate(-6deg);
}

small {
	color: #ccc !important;
}

/*
 * Footer
 */
.mastfoot {
	color: #999; /* IE8 proofing */
	color: rgba(255, 255, 255, .5);
}

@media ( min-width : 768px) {
	.masthead {
		position: fixed;
		top: 0;
	}
	.mastfoot {
		position: fixed;
		bottom: 0;
	}
	.site-wrapper-inner {
		vertical-align: middle;
	}
	.masthead, .mastfoot, .cover-container {
		width: 100%;
	}
	.cover-heading {
		font-size: 100px;
	}
}

@media ( min-width : 992px) {
	.mastfoot, .cover-container {
		max-width: 800px;
	}
	.masthead {
		max-width: 100%;
	}
}
</style>
</html>