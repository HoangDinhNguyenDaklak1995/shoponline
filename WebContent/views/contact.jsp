<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Liên hệ</title>
</head>
<link href="css/lienhe.css" rel="stylesheet">
<body>
	<div class="container animated fadeIn">
		<div class="row">
			<h1 class="header-title">Liên Hệ</h1>
			<hr>
			<div class="col-sm-12" id="parent">
				<div class="col-sm-6">
					<iframe width="100%" height="320px;" style="border: 0"
						src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJaY32Qm3KWTkRuOnKfoIVZws&key=AIzaSyAf64FepFyUGZd3WFWhZzisswVx2K37RFY"></iframe>
				</div>
				<div class="col-sm-6">
				<p class="" style="color: red;">${message }</p>
					<form action="mail/send.htm" class="contact-form" method="post">
						<div class="form-group">
							<input type="text" class="form-control" id="name" name="subject"
								placeholder="Tên của Bạn" required="required" autofocus="autofocus">
						</div>
						<div class="form-group form_left">
							<input type="email" class="form-control" id="email" name="from"
								placeholder="Địa chỉ email của Bạn"  required="required">
						</div>
						<div class="form-group form_left"style="display: none;" >
							<input type="email" class="form-control" id="email" name="to"
								placeholder="" value="hoangnguyen.cukuin@gmail.com" required="required" >
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="phone"
								onkeypress="return event.charCode >= 48 andand event.charCode <= 57"
								maxlength="10" placeholder="Số Điện Thoại ." required="required">
						</div>
						<div class="form-group">
							<textarea class="form-control textarea-contact" rows="5"
								id="comment" name="body"
								placeholder="Nhập liên hệ/phản hồi của bạn..."
								required="required"></textarea>
							<br>
							<button class="btn btn-default btn-send">
								<span class="glyphicon glyphicon-send"></span> Gửi Tin Nhắn
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
		
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
</body>
</html>