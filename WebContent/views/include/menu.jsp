<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<div id="fb-root"></div>
<style>
.imgsmall {
	width: 25px;
}
</style>
<div class="header1">
	<div class="topbar">
		<div class="container">
			<div class="topbar-left">
				<ul class="topbar-nav clearfix">
					<li><span class="phone">0(123) 456 789</span></li>
					<li><span class="email">info@Oceanshoppe.com</span></li>
				</ul>
			</div>
			<div class="topbar-right">
				<ul class="topbar-nav clearfix">

					<li class="dropdown"><a href="#"
						class="language dropdown-toggle" data-toggle="dropdown"><img
							src="theme/images/flag-us.png" alt=""> English</a>
						<ul class="dropdown-menu dropdown-menu-right">
							<li><a href="#"><img src="images/flag-us.png" alt="">
									&nbsp;English</a></li>
							<li><a href="#"><img src="images/flag-spain.png" alt="">
									&nbsp;Spanish</a></li>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="faq.htm"
						class="dropdown-toggle"><i
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
							Hướng dẫn mua hàng</a></li>
					<li class="dropdown head-dpdn"><a href="contact.htm"
						class="dropdown-toggle"><i
							class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
							Liên hệ ngay</a></li>
					<c:choose>
						<c:when test="${user.roles.id == 1 || user.roles.id == 2}">
							<li class="dropdown"><a href="#"
								class="account dropdown-toggle" data-toggle="dropdown">Tài
									Khoản của tôi</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li><a title="My Wishlist" href="admin/admin-login.htm">Quản
											Lý Admin</a></li>
									<li><a tabindex="-1" href="logout.htm"><i
											class="fa fa-sign-in" aria-hidden="true"></i>Đăng xuất</a></li>
								</ul></li>
						</c:when>
						<c:when
							test="${user.roles.id == 6 || user.roles.id == 5 ||user.roles.id == 4 || user.roles.id == 3}">
							<li class="dropdown"><a href="#"
								class="account dropdown-toggle" data-toggle="dropdown">Tài
									Khoản của tôi</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li><a title="My Account" href="editugrr/${user.id }.htm">${user.fullname }</a></li>
									<li><a tabindex="-1" href="logout.htm" onclick="logoutFacebook()" onclick="signOutGG()"><i
											class="fa fa-sign-in" aria-hidden="true"></i>Đăng xuất</a></li>
								</ul></li>
						</c:when>
						<c:otherwise>
							<li class="dropdown"><a href="#"
								class="language dropdown-toggle" data-toggle="dropdown"><img
									src="images/flag-us.png" alt=""> Đăng nhập</a>
								<ul class="dropdown-menu dropdown-menu-right"
									style="width: 300px;">
									<li><div class="btn-group">
											<a class='btn btn-info disabled'><i
												class="fa fa-key" style="width: 10px; height: 10px"></i></a>
											<a class='btn btn-info' href='login.htm' style="width: 15em;">
												Đăng nhập</a>
										</div></li> <br>
									<li><div class="btn-group g-signin2" data-onsuccess="onSignIn" id="myP" style="width: 245px;">
											<a class='btn btn-danger disabled'><i
												class="fa fa-google-plus g-signin2" style="width: 10px; height: 10px"></i></a>
											<a class='btn btn-danger g-signin2 href="' style="width: 15em;" id="btn-google">
												Đăng nhập bằng Google</a>	
										</div></li><li><img id="myImg"><br><p id="name"></p> <div id="status"></div></li> 
									<li><div class="btn-group">
											<a class='btn btn-primary disabled'><i
												class="fa fa-facebook" style="width: 10px; height: 10px"></i></a>
											<a id="btn-facebook" class='btn btn-primary' style="width: 15em">
												Đăng nhập bằng Facebook</a>
										</div></li>
								</ul></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</div>
</div>
<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
<script>
	//FB login
	window.fbAsyncInit = function () {
	    //SDK loaded, initialize it
	    FB.init({
	        appId: '117453615599820',
	        xfbml: true,
	        version: 'v2.11'
	    });
	
	    //check user session and refresh it
	    FB.getLoginStatus(function (response) {
	        if (response.status === 'connected') {
	            //user is authorized
	
	        } else if (response.status === 'not_authorized') {
	            // the user is logged in to Facebook,
	            // but has not authenticated your app
	
	        } else {
	            // the user isn't logged in to Facebook.
	
	        }
	    });
	};
	
	//load the JavaScript SDK
	(function (d, s, id) {
	    var js, fjs = d.getElementsByTagName(s)[0];
	    if (d.getElementById(id)) {
	        return;
	    }
	    js = d.createElement(s);
	    js.id = id;
	    js.src = "//connect.facebook.com/en_US/sdk.js";
	    fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	
	document.getElementById('btn-facebook').addEventListener('click', function () {
	    //do the login
    FB.login(function (response) {
        if (response.authResponse) {
            //user just authorized your app
            var accessToken = response.authResponse.accessToken;
            
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "${pageContext.request.contextPath}/signin-facebook.htm",
                data: accessToken,
                //dataType: 'json',
                // timeout: 600000,
                success: function (result) {
                    
                        location.reload();
                 },
                error: function (e) {
                 //   alert("Lỗi ! Đăng Nhập FaceBook");
                }
            });

	        }
	    }, {scope: 'email,public_profile', return_scopes: true});
	}, false);
	
	
	//logout FB
	function logoutFacebook() {
	    FB.logout(function (response) {
	    });
	};
</script>

<!-- <script src="https://apis.google.com/js/platform.js" async defer></script> -->
<meta name="google-signin-client_id" content="15786562009-dn9luosgbn6itt60r4pg3vuq56gju1n6.apps.googleusercontent.com">
<script src="https://apis.google.com/js/api:client.js"></script>
<script type="text/javascript">
//Mở Đăng Nhập Bằng Google
var googleUser = {};
var startApp = function () {
    gapi.load('auth2', function () {
        // Retrieve the singleton for the GoogleAuth library and set up the client.
        auth2 = gapi.auth2.init({
            client_id: '15786562009-dn9luosgbn6itt60r4pg3vuq56gju1n6.apps.googleusercontent.com',
            cookiepolicy: 'single_host_origin',
            // Request scopes in addition to 'profile' and 'email'
            //scope: 'additional_scope'
        });
        attachSignin(document.getElementById('btn-google'));
    });
};

function attachSignin(element) {
    //console.log(element.id);
    auth2.attachClickHandler(element, {},
        function (googleUser) {
            var id_token = googleUser.getAuthResponse().id_token;
            console.log(id_token);
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "${pageContext.request.contextPath}/signin-google.htm",
                data: id_token,
                //dataType: 'json',
                // timeout: 600000,
                success: function (result) {
                  
                    location.reload();
                },
                error: function (e) {
                    //alert("Lỗi ! Đăng Nhập Google");
                }
            });
        }, function (error) {

            //alert(JSON.stringify(error, undefined, 2)+"ĐÓng Của Sổ");
        });
}

startApp();
// Đóng Đăng Nhập Bằng Google

// Mở Đăng Xuất Bằng Google
function signOutGG() {
    firstLogin = 0;
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {

    });
}

// ĐÓng Đăng Xuất Bằng Google

// Mở Đăng Xuất
$('#btn-logout').click(function () {
    clearTimeout(timeout);
    timeout = setTimeout(function () {
        var token = $("meta[name='_csrf']").attr("content");
        

        $.ajax({
            type: "POST",
            url: contextPath+"/logout",
            success: function (result) {
                $("#LoadingImage").hide();
                if (result == "success") {
                    signOut();
                    logoutFacebook();
                    location.reload();
                }
            },
            error: function(xhr, status, error) {
                $("#LoadingImage").hide();
                /*var err = eval("(" + xhr.responseText + ")");
                alert("Lỗi Đăng Xuất");*/
                location.reload();
            }
        });
    }, 10);
});
	</script>