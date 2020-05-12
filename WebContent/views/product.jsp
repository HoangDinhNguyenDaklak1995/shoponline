<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
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
<body>
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
				data-wow-delay=".5s">
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Products</li>
			</ol>
		</div>
	</div>
	<div class="products">
		<div class="container">
			<div class="col-md-9 product-model-sec">
				<div
					class="product-grids simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".5s">
					<div class="new-top">
						<a href="single.html"><img src="images/g1.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Girl Dress </a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span class="on">☆</span> <span>☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$2000.00</del>
							</p>
							<p>
								<span class="item_price">$500.00</span>
							</p>
						</div>
					</div>
				</div>
				<div
					class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".7s">
					<div class="new-top">
						<a href="single.html"><img src="images/g5.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Baby Romper</a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span>☆</span> <span>☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$1200.00</del>
							</p>
							<p>
								<span class="item_price">$800.00</span>
							</p>
						</div>
					</div>
				</div>
				<div
					class="product-grids simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".9s">
					<div class="new-top">
						<a href="single.html"><img src="images/g7.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Bear Diaper Bag</a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span class="on">☆</span> <span>☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$570.00</del>
							</p>
							<p>
								<span class="item_price">$200.00</span>
							</p>
						</div>
					</div>
				</div>
				<div
					class="product-grids simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".5s">
					<div class="new-top">
						<a href="single.html"><img src="images/g3.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Doctor Play Set</a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span class="on">☆</span> <span class="on">☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$2000.00</del>
							</p>
							<p>
								<span class="item_price">$500.00</span>
							</p>
						</div>
					</div>
				</div>
				<div
					class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".7s">
					<div class="new-top">
						<a href="single.html"><img src="images/g6.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Baby Frock</a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span class="on">☆</span> <span>☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$180.00</del>
							</p>
							<p>
								<span class="item_price">$100.00</span>
							</p>
						</div>
					</div>
				</div>
				<div
					class="product-grids simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".9s">
					<div class="new-top">
						<a href="single.html"><img src="images/g2.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Pikachu Onesies</a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span>☆</span> <span>☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$2000.00</del>
							</p>
							<p>
								<span class="item_price">$500.00</span>
							</p>
						</div>
					</div>
				</div>
				<div
					class="product-grids simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".5s">
					<div class="new-top">
						<a href="single.html"><img src="images/g8.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Police Bike</a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span>☆</span> <span>☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$9050.00</del>
							</p>
							<p>
								<span class="item_price">$9000.00</span>
							</p>
						</div>
					</div>
				</div>
				<div
					class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".7s">
					<div class="new-top">
						<a href="single.html"><img src="images/g10.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Crocs Sandals</a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span class="on">☆</span> <span>☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$25.00</del>
							</p>
							<p>
								<span class="item_price">$20.00</span>
							</p>
						</div>
					</div>
				</div>
				<div
					class="product-grids simpleCart_shelfItem wow fadeInUp animated"
					data-wow-delay=".9s">
					<div class="new-top">
						<a href="single.html"><img src="images/g12.jpg"
							class="img-responsive" alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Quick View </a></li>
								<li><input type="number" class="item_quantity" min="1"
									value="1"></li>
								<li><a class="item_add" href=""> Add to cart</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="single.html">Child Print Bike </a>
						</h5>
						<div class="rating">
							<span class="on">☆</span> <span class="on">☆</span> <span
								class="on">☆</span> <span>☆</span> <span>☆</span>
						</div>
						<div class="ofr">
							<p class="pric1">
								<del>$4000.00</del>
							</p>
							<p>
								<span class="item_price">$3100.00</span>
							</p>
						</div>
					</div>
				</div>
				<div class="pagination-wrap" style="text-align: center;">
					<ul class="pagination pagination-v4">
						<li><a href="#">Previous</a></li>
						<li><a href="#">1</a></li>
						<li><a class="active" href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">----</a></li>
						<li><a href="#">Next</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 rsidebar">
				<div class="rsidebar-top">
					<div class="slider-left">
						<h4>Filter By Price</h4>
						<div id="slider-range"></div>
						<input type="text" id="amount"
							style="border: 0; color: #ffffff; font-weight: normal;" />
						<!---->
						<script type='text/javascript'>//<![CDATA[ 
							$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 9000,
										values: [ 1000, 7000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]>  
						</script>
						<script type="text/javascript" src="js/jquery-ui.js"></script>
						<!---->
					</div>
					<div class="sidebar-row">
						<h4>Clothes & Shoes</h4>
						<ul class="faq">
							<li class="item1"><a href="#">Frocks & Dresses<span
									class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Party Wear</a></li>
									<li class="subitem1"><a href="#">Night Wear</a></li>
									<li class="subitem1"><a href="#">Bath Time</a></li>
								</ul></li>
							<li class="item2"><a href="#">Shorts & Jeans<span
									class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Girls</a></li>
									<li class="subitem1"><a href="#">Boys</a></li>
									<li class="subitem1"><a href="#">Baby by age</a></li>
								</ul></li>
							<li class="item3"><a href="#">Protection <span
									class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Sweaters</a></li>
									<li class="subitem1"><a href="#">Rain Jackets</a></li>
									<li class="subitem1"><a href="#">Caps & Gloves</a></li>
								</ul></li>
						</ul>
						<!-- script for tabs -->
						<script type="text/javascript">
							$(function() {
							
								var menu_ul = $('.faq > li > ul'),
									   menu_a  = $('.faq > li > a');
								
								menu_ul.hide();
							
								menu_a.click(function(e) {
									e.preventDefault();
									if(!$(this).hasClass('active')) {
										menu_a.removeClass('active');
										menu_ul.filter(':visible').slideUp('normal');
										$(this).addClass('active').next().stop(true,true).slideDown('normal');
									} else {
										$(this).removeClass('active');
										$(this).next().stop(true,true).slideUp('normal');
									}
								});
							
							});
						</script>
						<!-- script for tabs -->
					</div>
					<div class="sidebar-row">
						<h4>DISCOUNTS</h4>
						<div class="row row1 scroll-pane">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Upto - 10% (20)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>70%
								- 60% (5)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>50% - 40% (7)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>30%
								- 20% (2)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>10% - 5% (5)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>30%
								- 20% (7)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>10% - 5% (2)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
						</div>
					</div>
					<div class="sidebar-row">
						<h4>Color</h4>
						<div class="row row1 scroll-pane">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>White</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pink</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Gold</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>Silver</label>
						</div>
					</div>
				</div>
				<div class="gallery-grid ">
					<h6>YOU MAY ALSO LIKE</h6>
					<a href="single.html"><img src="images/b1.png"
						class="img-responsive" alt="" /></a>
					<div class="gallery-text simpleCart_shelfItem">
						<h5>
							<a class="name" href="single.html">Full Sleeves Romper</a>
						</h5>
						<p>
							<span class="item_price">60$</span>
						</p>
						<h4 class="sizes">
							Sizes: <a href="#"> s</a> - <a href="#">m</a> - <a href="#">l</a>
							- <a href="#">xl</a>
						</h4>
						<ul>
							<li><a href="#"><span class="glyphicon glyphicon-globe"
									aria-hidden="true"></span></a></li>
							<li><a class="item_add" href="#"><span
									class="glyphicon glyphicon glyphicon-shopping-cart"
									aria-hidden="true"></span></a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon glyphicon-heart-empty"
									aria-hidden="true"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
<script type="text/javascript" id="sourcecode">
				$(function()
				{
					$('.scroll-pane').jScrollPane();
				});
			</script>
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
</html>