<%@page import="interceptor.XCaptcha"%>
<%@page import="org.aopalliance.intercept.Interceptor"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<head>
<title>Đăng ký tài khoản</title>
</head>
<script type="text/javascript">
	$(function() {
		$("#register").validate({
			rules : {
				username : {
					required : true
				},
				email : {
					email : true,
					required : true
				},
				pwd : {
					required : true,
					minlength : 10
				},
				pwdcf : {
					required : true,
					minlength : 10
				},
				fullname : {
					required : true
				}
			},
			messages : {
				username : {
					required : '<"Tài khoản không được trống!"/>'
				},
				pwd : {
					required : '<"Mật khẩu không được trống!"/>',
					minlength : '<"Mật khẩu phải có ít nhất 6 kí tự"/>'
				},
				pwdcf : {
					required : '<"Mật khẩu phải giống nhau!"/>',
					minlength : '<"Mật khẩu phải có ít nhất 6 kí tự"/>'
				},

				email : {
					email : '<"Email không được trống!"/>',
					required : '<"Email không được trống!"/>'
				},
				fullname : {
					required : '<"Họ và tên không được trống!"/>'
				}
			}
		});
	});
</script>
<div class="login-page">
	<div class="widget-shadow">
		<div class="login-top wow fadeInUp animated" data-wow-delay=".7s">
			<h4>
				ĐĂNG KÝ! <br> Đã có tài khoản? <a href="login.htm"> Đăng
					nhập ngay »</a>
			</h4>
		</div>
		<div class="login-body">
			<label class="error"> ${message}</label>
			<form class="wow fadeInUp animated" data-wow-delay=".7s"
				action="register.htm" method="post" id="register">
				<p class="" style="color: blue;">${message }</p>
				<input style="margin-top: 14px;" placeholder="Tên truy cập" required
					type="text" id="username" name="username" /> <input
					type="password" title="Password" id="password1"
					placeholder="Mật Khẩu" name="pwd"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()]).{6,16}"
					title="Mật Khẩu Từ 6-16 Ký Tự Bao Gồm Số, Chữ In Hoa, Chữ In Thường Và Ký Tự Đặc Biệt">
				<input required type="password" title="Password" id="password2"
					placeholder="Nhập Lại Mật Khẩu" name="pwdcf" /> <input
					style="margin-top: 14px;" placeholder="Tên Đầy Đủ" required
					type="text" id="fullname" name="fullname" /> <input
					onkeyup="isValidEmailAddress();" required placeholder="Email"
					type="text" title="Email" id="email"
					pattern="[a-zA-Z0-9._\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,4}"
					name="email" />
				<input type="submit" name="Register" value="Đăng Ký Ngay">
			</form>
		</div>
	</div>
</div>
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
<script type="text/javascript">
	var password = document.getElementById("password1"), confirm_password = document
			.getElementById("password2");

	function validatePassword() {
		if (password1.value != password2.value) {
			password2.setCustomValidity("Mật khẩu không khớp");
		} else {
			password2.setCustomValidity('');
		}
	}

	password1.onchange = validatePassword;
	password2.onkeyup = validatePassword;
</script>