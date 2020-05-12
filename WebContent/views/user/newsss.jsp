<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tin Tức nổi bật</title>
</head>
<body>
<c:forEach begin="0" end="4" var="u" items="${newsss }">
	<div class="section container">
		<div class="intro">
			
			<h1> ${u.tieude }</h1>
			<p>${u.motangan }</p>
			<button class="btn">Follow Me</button>
		</div>
		<hr />
		<div class="section-career">
			<div class="title">
				<h1>Ưu điểm của sản phẩm</h1>
			</div>
			<div class="career-content">
				<div class="career-conent_word">
					<span class="cnt"> ${u.noidung }</span>
				</div>
				<div class="career-content_img">
					<div class="img-box">
						<img src="files/sanpham/${u.images}" />
					</div>
				</div>
			</div>
			<div class="section-history">
				<div class="title">
					<h1>Chi tiết</h1>
				</div>
				<div class="history-content">
					<div class="card">
						<div class="card-img">
							<img src="files/sanpham/${u.images1 }" />
						</div>
						<div class="card-cnt">
							<p>${u.motaanh1 }</p>
							<button class="btn">Learn more</button>
						</div>
					</div>
					<div class="card">
						<div class="card-img">
							<img src="files/sanpham/${u.images2 }" />
						</div>
						<div class="card-cnt">
							<p>${u.motaanh2 }</p>
							<button class="btn">Learn more</button>
						</div>
					</div>
					<div class="card">
						<div class="card-img">
							<img src="files/sanpham/${u.images3 }" />
						</div>
						<div class="card-cnt">
							<p>${u.motaanh3 }</p>
							<button class="btn">Learn more</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
<br>
</body>
<style>

.intro {
	padding: 10px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin: 20px 0px;
}

.intro .intro-header {
	border: 5px solid #555;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.intro .intro-header img {
	border-radius: 50%;
}

.intro h1 {
	font-size: 3rem;
	color: #555;
}

.intro p {
	color: #999;
	margin: 10px;
	font-size: 1.5rem;
}

.section-career {
	width: 100%;
	display: flex;
	flex-direction: column;
}

.section-career .career-content {
	width: 100%;
	height: 400px;
	flex: 1;
	display: flex;
	box-shadow: 0px 15px 20px -5px rgba(0, 0, 0, 0.3);
}

.section-career .career-content .career-conent_word {
	flex: 1.5;
	margin: 30px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.section-career .career-content .career-conent_word .cnt {
	font-size: 1.5rem;
	color: #555;
}

.section-career .career-content .career-content_img {
	flex: 1;
}

.section-career .career-content .career-content_img .img-box {
	position: relative;
	width: 100%;
	height: 100%;
}

.section-career .career-content .career-content_img .img-box img {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 100%;
	height: 100%;
}

.section-history .history-content {
	width: 100%;
	display: flex;
	justify-content: space-between;
}

.section-history .history-content .card {
	width: 300px;
	height: 400px;
	display: flex;
	flex-direction: column;
	box-shadow: 0px 15px 20px -5px rgba(0, 0, 0, 0.3);
}

.section-history .history-content .card .card-img {
	flex: 2;
	position: relative;
}

.section-history .history-content .card .card-img img {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 100%;
	height: 100%;
}

.section-history .history-content .card .card-cnt {
	flex: 1;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
	text-align: center;
	font-size: 1.1rem;
	color: #555;
}

.section-skill {
	background: rgba(0, 0, 139, 0.8);
	margin: 50px 0;
	padding-bottom: 50px;
}

.section-skill .title {
	color: #fff;
}

.section-skill .title h1 {
	border-color: #fff;
}

.section-skill .skill-content {
	display: flex;
	justify-content: space-around;
}

.section-skill .skill-content .skill-icon {
	width: 150px;
	height: 150px;
	position: relative;
}

.section-skill .skill-content .skill-icon img {
	position: absolute;
	top: -50%;
	left: -50%;
	transform: translate(50%, 50%);
	width: 100%;
	height: 100%;
}

a {
	text-decoration: none;
}

.section-product .product-content {
	box-shadow: 0px 15px 20px -5px rgba(0, 0, 0, 0.3);
	display: flex;
	border-left: 10px solid yellow;
	height: 150px;
	align-items: center;
	transition: all 0.3s;
}

.section-product .product-content .product_img {
	margin: 0px 20px;
	position: relative;
	width: 100px;
	height: 100px;
	border-radius: 20px;
}

.section-product .product-content .product_img img {
	border-radius: 20px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 100%;
	height: 100%;
}

.section-product .product-content .product-intro {
	display: flex;
	align-items: center;
	flex: 1;
	font-size: 1.2rem;
	color: #555;
}

.section-product .product-content:hover {
	box-shadow: 0px 45px 30px -25px rgba(0, 0, 0, 0.2);
	border-color: rgba(255, 0, 0, 0.8);
}

.section-hobbies {
	width: 100%;
	height: 500px;
	margin-top: 50px;
	background-image:
		url(http://newinki.com/wp-content/uploads/all-nba-players-ever-wallpaper-nba-stars-2013-by-danielboveportillo-on-deviantart-photography.jpg);
	background-attachment: fixed;
	background-size: 100%;
	background-repeat: no-repeat;
}

.section-hobbies .title {
	color: #fff;
}

.section-hobbies .hobbies-content {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.section-hobbies .hobbies-content p {
	font-size: 2rem;
	color: #FFF;
	font-weight: bold;
	margin-left: 20px;
}

.section-contact {
	height: 400px;
	text-align: center;
	color: #333;
}

.section-contact h2 {
	margin-bottom: 10px;
	font-size: 2rem;
}

.section-contact form {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: row;
	justify-content: center;
	background: #fff;
	box-shadow: 0px 15px 20px -5px rgba(0, 0, 0, 0.3);
}

.section-contact form input {
	border: none;
	font-size: 1.2rem;
	flex: 1;
	padding-left: 20px;
	outline: none;
}

.section-contact form button {
	margin: 10px;
}
</style>
</html>