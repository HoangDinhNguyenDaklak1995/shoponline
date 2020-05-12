<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script src='https://www.google.com/recaptcha/api.js'></script>
<div class="login-page">
	<div class="widget-shadow">
		<div class="login-top wow fadeInUp animated" data-wow-delay=".7s">
			<h4>
				Bạn đã lấy lại tài khoản?<a href="login.htm"> Đăng nhập ngay »</a>
			</h4>
		</div>
		<div class="login-body">
			<form class="wow fadeInUp animated" data-wow-delay=".7s"
				action="mailer/send.htm" method="post">
				<input type="text" class="email" placeholder="Email Address"
					required="required" name="email">
				<p class="" style="color: red;">${message }</p>
				<input type="submit" name="foruser" value="Lấy lại tài khoản">
			</form>
		</div>
	</div>
</div>
