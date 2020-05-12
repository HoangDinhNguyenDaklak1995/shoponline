<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="navbar navbar-default" id="subnav">
	<div class="col-md-12">
		<div class="collapse navbar-collapse" id="navbar-collapse2">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.htm" class="fa fa-home"> Home</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="cart-items">
	<div class="container">
		<h3 class="wow fadeInUp animated" data-wow-delay=".5s">My
			Shopping Cart(3)</h3>
		<div class="cart-header wow fadeInUp animated" data-wow-delay=".5s">
			<div class="alert-close"></div>
			<div class="cart-sec simpleCart_shelfItem">
				<div class="cart-item cyc">
					<a href="single.html"><img src="images/g1.jpg"
						class="img-responsive" alt=""></a>
				</div>
				<div class="cart-item-info">
					<h4>
						<a href="single.html"> Lorem Ipsum is not simply </a><span>Pickup
							time :</span>
					</h4>
					<ul class="qty">
						<li><p>Min. order value :</p></li>
						<li><p>FREE delivery</p></li>
					</ul>
					<div class="delivery">
						<p>Service Charges : $10.00</p>
						<span>Delivered in 1-1:30 hours</span>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="cart-header1 wow fadeInUp animated" data-wow-delay=".7s">
			<div class="alert-close1"></div>
			<div class="cart-sec simpleCart_shelfItem">
				<div class="cart-item cyc">
					<a href="single.html"><img src="images/g5.jpg"
						class="img-responsive" alt=""></a>
				</div>
				<div class="cart-item-info">
					<h4>
						<a href="single.html"> Lorem Ipsum is not simply </a><span>Pickup
							time :</span>
					</h4>
					<ul class="qty">
						<li><p>Min. order value :</p></li>
						<li><p>FREE delivery</p></li>
					</ul>
					<div class="delivery">
						<p>Service Charges : $10.00</p>
						<span>Delivered in 1-1:30 hours</span>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="cart-header2 wow fadeInUp animated" data-wow-delay=".9s">
			<div class="alert-close2"></div>
			<div class="cart-sec simpleCart_shelfItem">
				<div class="cart-item cyc">
					<a href="single.html"><img src="images/g9.jpg"
						class="img-responsive" alt=""></a>
				</div>
				<div class="cart-item-info">
					<h4>
						<a href="single.html"> Lorem Ipsum is not simply </a><span>Pickup
							time :</span>
					</h4>
					<ul class="qty">
						<li><p>Min. order value :</p></li>
						<li><p>FREE delivery</p></li>
					</ul>
					<div class="delivery">
						<p>Service Charges : $10.00</p>
						<span>Delivered in 1-1:30 hours</span>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<script src="js/main.js"></script>
<!--//search jQuery-->
<!--smooth-scrolling-of-move-up-->
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
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--//js-->
<!--cart-->
<script src="js/simpleCart.min.js"></script>
<!--cart-->
<!--web-fonts-->
<link
	href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Pompiere' rel='stylesheet'
	type='text/css'>
<link href='//fonts.googleapis.com/css?family=Fascinate'
	rel='stylesheet' type='text/css'>
<!--web-fonts-->
<!--animation-effect-->
<link href="css/animate.min.css" rel="stylesheet">
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!--//animation-effect-->
<!--close-button-->
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.cart-header').fadeOut('slow', function(c){
	  		$('.cart-header').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.cart-header1').fadeOut('slow', function(c){
	  		$('.cart-header1').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close2').on('click', function(c){
		$('.cart-header2').fadeOut('slow', function(c){
	  		$('.cart-header2').remove();
		});
	});	  
});
</script>
<!--//close-button-->
<!--start-smooth-scrolling-->
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