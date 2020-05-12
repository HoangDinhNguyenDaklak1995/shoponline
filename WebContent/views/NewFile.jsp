<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:300,400'>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/css/foundation-flex.min.css'>
      <link rel="stylesheet" href="testing/css/style.css">
<title>A demo of Bootstrap shopping cart by using jQuery</title>

</head>
<body>
	<div>
  <header>
    <div class="callout secondary text-right">
      <div class="row">
        <a id="cart-toggle" class="tertia-text">0 <i class="fa fa-shopping-cart"></i></a>
      </div>
    </div>
  </header>
  <section>
    <header class="row">
      <fieldset class="small-12 fieldset">
        <legend>Game Filters</legend>
        <div class="row">
          <div class="column input-group">
            <input id="search-input" class="input-group-field" type="text" placeholder="search">
            <span class="input-group-label"><i class="fa fa-search"></i></span>
          </div>
          <label class="column small-2">
            <select id="sort-input">
              <option value="">Sort By</option>
              <option value="player_min">Min. Players</option>
              <option value="player_max">Max Players</option>
            </select>
          </label>
          <div class="column">

            <div class="row">
              <div class="switch tiny column">
                <input class="switch-input" id="expansion-switch" type="checkbox" name="expansion-switch">
                <label class="switch-paddle" for="expansion-switch"></label>
                <span class="switch-inline-label">Show Expansions</span>
              </div>
              <div class="switch tiny column">
                <input class="switch-input" id="sale-switch" type="checkbox" name="sale-switch">
                <label class="switch-paddle" for="sale-switch"></label>
                <span class="switch-inline-label">On Sale</span>
              </div>
            </div>

          </div>
        </div>
      </fieldset>
    </header>
    <section class="row">
<!--       <p class="lead medium-expand text-center">
        <i class="fa fa-warning"></i> No games matching that criteria
      </p> -->
      <ul id="game-list" class="row medium-expand no-bullet">
      </ul>
    </section>
  </section>

  <aside id="cart" class="cart medium-4 callout off-canvas position-right">
    <header id="cart-header" class="cart-header text-center">
      <div>0 items</div>
      <div>Subtotal: $0.00</div>
    </header>
    <div class="cart-content">
      <ul id="cart-game-list" class="vertical menu"></ul>
    </div>
    <div class="cart-button button">Proceed to Checkout</div>
  </aside>
  
  <div id="modal-container" class="modal-container"></div>
  
  <aside id="checkout-modal" class="modal callout checkout-modal">
    <h4>Billing Info</h4>
    <p>Enter your billing information to calculate tax and shipping costs.</p>
    <fieldset class="fieldset row">
      <legend>Contact</legend>
      <div class="input-group">
        <span class="input-group-label">First Name</span>
        <input class="input-group-field" name="first-name" type="text">
      </div>
      <div class="input-group">
        <span class="input-group-label">Last Name</span>
        <input class="input-group-field" name="last-name" type="text">
      </div>
    </fieldset>
    <fieldset class="fieldset row">
      <legend>Address</legend>
      <div class="input-group">
        <span class="input-group-label">Address</span>
        <input class="input-group-field" name="address-1" type="text">
      </div>
      <div class="input-group">
        <span class="input-group-label">Address 2</span>
        <input class="input-group-field" name="address-2" placeholder="suite; bldg; etc." type="text">
      </div>
      <div class="row">
        <div class="input-group column medium-6">
          <label class="input-group-label">City</label>
          <input class="input-group-field" name="address-1" type="text">
        </div>
        <div class="input-group column medium-6">
          <label class="input-group-label">Zip</label>
          <input class="input-group-field" name="address-1" type="text">
        </div>
      </div>
    </fieldset>
    <fieldset class="fieldset row align-right">
      <legend>Order Details</legend>
      <ul class="text-right no-bullet">
        <li>Subtotal: $59.99</li>
        <li>Tax: $4.79</li>
        <li>Shipping: $7.89</li>
        <li class="tertia-text">Total: $72.67</li>
      </ul>
    </fieldset>
    <div class="button-group align-right">
      <button id="confirm-yes">Cancel</button>
      <button id="confirm-no" class="button">Place Order</button>
    </div>
  </aside>
  
  <aside id="confirm-modal" class="modal callout confirm-modal">
    <h4>Confirm Removal</h4>
    <p>You're about to remove *** from your cart, are you sure you want to do this?</p>
    <div class="button-group align-right">
      <button id="confirm-yes">Cancel</button>
      <button id="confirm-no" class="button alert">Remove</button>
    </div>
  </aside>
  
  <aside id="preview-modal" class="modal callout preview-modal">
    <div class="media-object">
      <div class="media-object-section">
        <img src="http://placehold.it/175x150" />
      </div>
      <div class="media-object-section">
        <h5>Imperial Settlers</h5>
        <ul class="no-bullet">
          <li><strong>Player Count:</strong> 1-4 players</li>
          <li><strong>Best with:</strong> 3</li>
          <li>
            <a href="https://youtube.com" target="_blank">
              <i class="fa fa-youtube-play"></i>
              Watch how to play
            </a>
          </li>
          <li>
            <a href="https://youtube.com" target="_blank">
              <i class="fa fa-youtube-play"></i>
              Watch the review
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="button-group align-right">
      <button>Close</button>
      <button class="button"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
    </div>
  </aside>
</div>
  <script src='https://use.fontawesome.com/bdd834c7e7.js'></script>
<script src='https://codepen.io/trevthewebdev/pen/bWvjZK.js'></script>

    <script  src="testing/js/index.js"></script>
	
</body>
</html>
