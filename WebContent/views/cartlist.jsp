<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/stylecart.css"> <!-- Resource style -->
  	
	<title>Add to Cart Interaction | CodyHouse</title>
</head>
<body>
<main>
	<h1>Add to Cart Interaction</h1>
	<button type="submit" class="cd-add-to-cart" data-price="25.99">Add to cart</button>
</main>

<div class="cd-cart-container empty">
	<a href="#0" class="cd-cart-trigger">
		Cart
		
		<ul class="count"> <!-- cart items count -->
			<li>0</li>
			<li>0</li>
		</ul> <!-- .count -->
	</a>

	<div class="cd-cart">
		<div class="wrapper">
			<header>
				<h2>Cart</h2>
				<span class="undo">Item removed. <a href="#0">Undo</a></span>
			</header>
			
			<div class="body">
				<ul>
					<!-- products added to the cart will be inserted here using JavaScript -->
				</ul>
			</div>

			<footer>
				<a href="#0" class="checkout btn"><em>Checkout - $<span>0</span></em></a>
			</footer>
		</div>
	</div> <!-- .cd-cart -->
</div> <!-- cd-cart-container -->
	
<script src="js/jquery.min.js"></script>
<script>
	if( !window.jQuery ) document.write('<script src="js/jquery-3.0.0.min.js"><\/script>');
</script>
<script src="js/main.js"></script> <!-- Resource jQuery -->

</body>
</html>