<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
  .badge-notify{
    background:red;
    position:relative;
    top: -20px;
    right: 10px;
  }
  .my-cart-icon-affix {
    position: fixed;
    z-index: 999;
  }
  </style>


</head>

<body class="container">
  <div class="page-header">
    <h1>Products
      <div style="float: right; cursor: pointer;">
        <span class="glyphicon glyphicon-shopping-cart my-cart-icon"><span class="badge badge-notify my-cart-badge"></span></span>
      </div>
    </h1>
  </div>

  <div class="row">
    <div class="col-md-3 text-center">
      <img src="images/img_1.png" width="150px" height="150px">
      <br>
      product 1 - <strong>$10</strong>
      <br>
      <button class="btn btn-danger my-cart-btn" data-id="1" data-name="product 1" data-summary="summary 1" data-price="10" data-quantity="1" data-image="images/img_1.png">Add to Cart</button>
      <a href="#" class="btn btn-info">Details</a>
    </div>

    <div class="col-md-3 text-center">
      <img src="images/img_2.png" width="150px" height="150px">
      <br>
      product 2 - <strong>$20</strong>
      <br>
      <button class="btn btn-danger my-cart-btn" data-id="2" data-name="product 2" data-summary="summary 2" data-price="20" data-quantity="1" data-image="images/img_2.png">Add to Cart</button>
      <a href="#" class="btn btn-info">Details</a>
    </div>

    <div class="col-md-3 text-center">
      <img src="images/img_3.png" width="150px" height="150px">
      <br>
      product 3 - <strong>$30</strong>
      <br>
      <button class="btn btn-danger my-cart-btn" data-id="3" data-name="product 3" data-summary="summary 3" data-price="30" data-quantity="1" data-image="images/img_3.png">Add to Cart</button>
      <a href="#" class="btn btn-info">Details</a>
    </div>

    <div class="col-md-3 text-center">
      <img src="images/img_4.png" width="150px" height="150px">
      <br>
      product 4 - <strong>$40</strong>
      <br>
      <button class="btn btn-danger my-cart-btn" data-id="4" data-name="product 4" data-summary="summary 4" data-price="40" data-quantity="1" data-image="images/img_4.png">Add to Cart</button>
      <a href="#" class="btn btn-info">Details</a>
    </div>

    <div class="col-md-3 text-center">
      <img src="images/img_5.png" width="150px" height="150px">
      <br>
      product 5 - <strong>$50</strong>
      <br>
      <button class="btn btn-danger my-cart-btn" data-id="5" data-name="product 5" data-summary="summary 5" data-price="50" data-quantity="1" data-image="images/img_5.png">Add to Cart</button>
      <a href="#" class="btn btn-info">Details</a>
    </div>

  </div>	
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type='text/javascript' src="js/jquery.mycart/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      classProductQuantity: 'my-product-quantity',
      classProductRemove: 'my-product-remove',
      classCheckoutCart: 'my-cart-checkout',
      affixCartIcon: true,
      showCheckoutModal: true,
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      clickOnCartIcon: function($cartIcon, products, totalPrice, totalQuantity) {
        console.log("cart icon clicked", $cartIcon, products, totalPrice, totalQuantity);
      },
      checkoutCart: function(products, totalPrice, totalQuantity) {
        console.log("checking out", products, totalPrice, totalQuantity);
      },
      getDiscountPrice: function(products, totalPrice, totalQuantity) {
        console.log("calculating discount", products, totalPrice, totalQuantity);
        return totalPrice * 0.5;
      }
    });

  });
  </script>
</body>
</html>